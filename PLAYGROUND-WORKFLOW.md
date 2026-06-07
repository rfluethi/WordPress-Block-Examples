# Playground-Blueprints – Arbeitsablauf

Leitfaden zum schnellen Erstellen, Anpassen und Veröffentlichen von WordPress-Playground-Demos in diesem Repo. Stand: Mitte 2026.

---

## 1. Grundprinzipien

Drei Regeln, die alle Probleme von früher vermeiden:

1. **Eine Quelle der Wahrheit.** Inhalte kommen aus *einem* vollständigen Export der Local-Installation (`content.xml`), nicht aus handgepflegten Einzeldateien.
2. **GitHub ist das Backend, deine Webseite das Schaufenster.** Dateien liegen versioniert im Repo und werden über das jsDelivr-CDN ausgeliefert; auf der Webseite stehen nur hübsche Links/Buttons.
3. **Ein Bundle pro Demo.** Blueprint + Theme + Inhalt werden zu einer ZIP-Datei gepackt (`bundle/<name>.zip`) – Playground lädt sie in einem Rutsch.

### Warum jsDelivr statt direkt GitHub?

Playground lädt alles im Browser per `fetch`. Das scheitert oft an **CORS** (Cross-Origin-Sperren). GitHub und jsDelivr liefern die nötigen Header automatisch; ein normaler Webserver tut das meist nicht – besonders bei Bildern. Deshalb: Assets nie auf der eigenen Seite hosten, sondern über GitHub/jsDelivr.

---

## 2. Repo-Struktur

```
GitHub/
├── _demo-template/         ← Kopiergerüst für neue Demos
├── block-theme-fish/       ← fertige Demo (Referenzbeispiel)
│   ├── blueprint.json
│   ├── content.xml
│   ├── theme/fish.zip
│   ├── uploads/
│   └── bundle/block-theme-fish.zip
├── PLAYGROUND-WORKFLOW.md   ← dieses Dokument
└── README.md
```

---

## 3. Neue Demo erstellen

1. **Ordner anlegen** in der Local-Installation, Theme + Beispielinhalte bauen.
2. **Exportieren:** in Local *Werkzeuge → Daten exportieren → Alle Inhalte*. Das ergibt die `content.xml`.
3. **Vorlage kopieren:** `_demo-template/` duplizieren und in den Demo-Namen umbenennen (= `DEMO_SLUG`).
4. **Dateien einsetzen:** Theme als ZIP nach `theme/`, Bilder/Schriften nach `uploads/`, Export als `content.xml`.
5. **URLs umschreiben** in `content.xml`: die Local-Domain der Uploads
   `http://<deinsite>.local/wp-content/uploads`
   → `https://cdn.jsdelivr.net/gh/rfluethi/WordPress-Block-Examples@main/DEMO_SLUG/uploads`
6. **Platzhalter ersetzen** (`DEMO_SLUG`, `DEMO_TITEL`, `THEME.zip`, `STARTSEITE_SLUG` …) in `blueprint.json` und `content.xml`.
7. **Bundle bauen:** `./build-bundle.sh`
8. **Prüfen** (Abschnitt 6), **committen, pushen.**
9. **Link verteilen** (Abschnitt 7).

> Die Details zu Platzhaltern und Dateien stehen in `_demo-template/README.md`.

---

## 4. Bestehende Demo anpassen

- **Kleine Blueprint-Änderung** (z. B. ein Schritt): in `blueprint.json` ändern, dann `./build-bundle.sh` neu laufen lassen, pushen.
- **Theme/Inhalt geändert:** Datei in `theme/` bzw. `content.xml`/`uploads/` ersetzen, **immer** `build-bundle.sh` erneut ausführen (sonst ist das Bundle veraltet), pushen.
- **Live ausprobieren ohne Push:** den **Live-Blueprint-Editor** nutzen (Abschnitt 5).

> Merksatz: Nach jeder Änderung an Theme oder Inhalt das Bundle neu bauen.

---

## 5. Werkzeuge

| Werkzeug | Zweck | Aufruf / Ort |
|---|---|---|
| **Live-Blueprint-Editor** | Blueprint live tippen und sofort sehen (Auto-Recreate, Auto-Vervollständigung) | `playground.wordpress.net` |
| **CLI – Schnelltest** | Blueprint headless durchlaufen lassen | `npx @wp-playground/cli run-blueprint --blueprint=./blueprint.json` |
| **CLI – Server** | lokale Instanz mit Browser | `npx @wp-playground/cli server --blueprint=./blueprint.json` |
| **Inline-URL** | Mini-Blueprint ohne Hosting testen | `playground.wordpress.net/#{…minified JSON…}` |
| **Agent-Skill** | KI-Agent schreibt valide Blueprints (v2) | `npx skills add wordpress/agent-skills --skill blueprint` |
| **build-bundle.sh** | Bundle erzeugen | im Demo-Ordner: `./build-bundle.sh` |

---

## 6. Qualitäts-Check vor dem Push

```bash
# im Demo-Ordner
python3 -c "import json;json.load(open('blueprint.json'))"               # JSON gültig
python3 -c "import xml.dom.minidom;xml.dom.minidom.parse('content.xml')" # XML wohlgeformt
grep -c "seminar-demo-fische.local" content.xml                          # muss 0 sein (keine toten URLs)
npx @wp-playground/cli run-blueprint --blueprint=./blueprint.json        # läuft ohne Fehler durch
```

Sicht-Check in der geladenen Demo: Startseite korrekt, Bilder sichtbar, Menü + Suche da, Footer richtig, keine kaputten Bild-Symbole.

---

## 7. Auf der Webseite einbinden

Auf der eigenen Seite nur **Links** setzen – keine Dateien hosten. Beispiel-Button:

```html
<a class="button"
   href="https://playground.wordpress.net/?blueprint-url=https://cdn.jsdelivr.net/gh/rfluethi/WordPress-Block-Examples@main/DEMO_SLUG/bundle/DEMO_SLUG.zip"
   target="_blank" rel="noopener">
  Demo öffnen
</a>
```

Optional eine kurze, eigene URL (z. B. `rfluethi.com/demo/fische`) per Weiterleitung auf den langen Playground-Link – einfacher zu teilen, und du kannst das Ziel später ändern, ohne den geteilten Link anzufassen.

---

## 8. Versionierung & Cache

jsDelivr cacht aggressiv (gut fürs Tempo). Zwei Konsequenzen:

- **Nach einem Push** kann der alte Stand bis zu ~12 h ausgeliefert werden. Sofort aktualisieren: betroffene URL unter `https://www.jsdelivr.com/tools/purge` leeren.
- **Für stabile, geteilte Demos** einen Git-Tag setzen und in den URLs `@main` durch den Tag ersetzen:
  ```bash
  git tag v1 && git push origin v1
  ```
  → `…@v1/DEMO_SLUG/bundle/DEMO_SLUG.zip` ist unveränderlich und optimal gecacht. Für die nächste Fassung `v2` usw.

Empfehlung: Während der Entwicklung `@main`, für öffentlich verteilte Links ein Tag.

---

## 9. Häufige Fehler

| Symptom | Ursache | Lösung |
|---|---|---|
| Bilder fehlen / kaputtes Symbol | tote Local-URLs in `content.xml` | URLs auf jsDelivr-Uploads umschreiben |
| Theme aktiviert nicht | Parent-Theme fehlt | WP auf `6.8` pinnen (Twenty Twenty-Five gebündelt) oder Parent installieren |
| Alte Version wird geladen | jsDelivr-Cache | purgen oder Git-Tag verwenden |
| „File not found" bei Bundle | falsche `bundled`-Pfade | `build-bundle.sh` neu laufen lassen |
| Demo lädt gar nicht | CORS / falsche URL | nur GitHub/jsDelivr-URLs verwenden, URL prüfen |

---

## 10. Kurzreferenz Blueprint-Schritte

| Schritt | Zweck |
|---|---|
| `login` | als admin anmelden |
| `setSiteOptions` | Site-Name, Untertitel, Permalinks |
| `installTheme` | Theme aus URL/Bundle installieren (+ aktivieren) |
| `installPlugin` | Plugin installieren (`wordpress.org/plugins`, URL, git) |
| `importWxr` | Inhalts-Export importieren |
| `runPHP` | beliebiger PHP-Code (immer mit `require_once 'wordpress/wp-load.php';`) |
| `wp-cli` | WP-CLI-Befehl ausführen |

Schema-Referenz & Auto-Vervollständigung: im Live-Editor oder via Agent-Skill.
