# Demo-Vorlage (Playground-Blueprint)

Kopiergerüst für neue WordPress-Playground-Demos. Eine neue Demo entsteht durch
Kopieren dieses Ordners, Ersetzen der Platzhalter und Einfügen der echten Dateien.

## Struktur

```
DEMO_SLUG/
├── blueprint.json   ← Ablauf: Login, Theme, Inhalt, Aufräumen (jsDelivr-URLs)
├── content.xml      ← Inhalts-Export aus der Local-Installation
├── theme/THEME.zip  ← dein Theme
├── uploads/         ← Bilder + Schriften (von jsDelivr geladen)
├── bundle/          ← wird von build-bundle.sh erzeugt (nicht von Hand bearbeiten)
└── build-bundle.sh  ← packt alles zu einem schnellen Bundle
```

## Platzhalter (überall ersetzen)

| Platzhalter | Bedeutung | Beispiel |
|---|---|---|
| `DEMO_SLUG` | Ordnername = URL-Teil | `block-theme-fish` |
| `DEMO_TITEL` | Site-Name | `Fische` |
| `DEMO_UNTERTITEL` | Untertitel | `Naturwunder unter Wasser` |
| `THEME.zip` | Dateiname deines Themes | `fish.zip` |
| `STARTSEITE_SLUG` | Slug der Startseite | `fische` |

## Schritt für Schritt

1. **Ordner kopieren** und in den Demo-Namen umbenennen (= `DEMO_SLUG`).
2. **Theme** als ZIP nach `theme/` legen, **Bilder/Schriften** nach `uploads/`.
3. **`content.xml`** durch deinen echten Export ersetzen (Local: *Werkzeuge → Daten exportieren*). In der Datei die alte Local-Domain (`http://...local/wp-content/uploads`) auf die jsDelivr-Upload-URL umschreiben.
4. **Platzhalter ersetzen** (Tabelle oben) in `blueprint.json` und `content.xml`.
5. **Bundle bauen:** `./build-bundle.sh`  → erzeugt `bundle/DEMO_SLUG.zip`.
6. **Committen & pushen.** Bei Änderungen an Theme/Inhalt: `build-bundle.sh` erneut laufen lassen.
7. **Demo öffnen:**
   ```
   https://playground.wordpress.net/?blueprint-url=https://cdn.jsdelivr.net/gh/rfluethi/WordPress-Block-Examples@main/DEMO_SLUG/bundle/DEMO_SLUG.zip
   ```

## Vorher prüfen (Schnell-Check)

- `python3 -c "import json;json.load(open('blueprint.json'))"` → JSON gültig
- `python3 -c "import xml.dom.minidom;xml.dom.minidom.parse('content.xml')"` → XML wohlgeformt
- `npx @wp-playground/cli run-blueprint --blueprint=./blueprint.json` → läuft durch ohne Fehler

Den vollständigen Workflow (inkl. Webseiten-Verlinkung, Live-Editor, Versionierung)
beschreibt `../PLAYGROUND-WORKFLOW.md`.
