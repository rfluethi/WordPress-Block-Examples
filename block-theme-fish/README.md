# Fish – WordPress-Block-Theme-Demo (Playground)

Demo des Block-Themes **„Fish"** (Child-Theme von Twenty Twenty-Five) mit allen Beispielseiten, Beiträgen, Bildern, Menü und Schriften – geladen über einen WordPress-Playground-Blueprint.

## Demo starten

Beide Links führen zur identischen Demo. Empfohlen ist die Bundle-Variante (lädt am schnellsten, alles in einer Datei).

**Bundle (schnell, empfohlen):**

[**▶ Live-Demo öffnen (Bundle)**](https://playground.wordpress.net/?blueprint-url=https://cdn.jsdelivr.net/gh/rfluethi/WordPress-Block-Examples@main/block-theme-fish/bundle/block-theme-fish.zip)

```
https://playground.wordpress.net/?blueprint-url=https://cdn.jsdelivr.net/gh/rfluethi/WordPress-Block-Examples@main/block-theme-fish/bundle/block-theme-fish.zip
```

**Einzel-Blueprint (zum Ansehen/Bearbeiten):**

```
https://playground.wordpress.net/?blueprint-url=https://cdn.jsdelivr.net/gh/rfluethi/WordPress-Block-Examples@main/block-theme-fish/blueprint.json
```

Admin-Login in der Demo: `admin` / `password`

> Auslieferung über das **jsDelivr-CDN** (schnell, weltweit gecacht). Nach einem Push kann das CDN bis zu ~12 h alte Stände zeigen; bei Bedarf unter `https://www.jsdelivr.com/tools/purge` die geänderten URLs leeren oder einen Git-Tag (`@v1` statt `@main`) verwenden.

## Inhalt

| Datei | Zweck |
|---|---|
| `blueprint.json` | Playground-Blueprint (Einzeldatei, lädt Theme/Inhalt per jsDelivr-URL) |
| `content.xml` | Vollständiger Inhalts-Export (Seiten, Beiträge, Bilder, Kategorien) – einzige Inhalts-Quelle |
| `theme/fish.zip` | Das Theme „Fish" (Twenty-Twenty-Five-Child) |
| `uploads/` | Bilder (inkl. aller Größen) und Schriften, von jsDelivr geladen |
| `bundle/block-theme-fish.zip` | Selbst­enthaltenes Bundle (Blueprint + Theme + Inhalt in einer Datei) – für die schnelle Demo |

## Wie der Blueprint arbeitet

1. Login und Site-Optionen (Name „Fische", Permalinks).
2. Theme `fish.zip` installieren und aktivieren (Parent Twenty Twenty-Five ist in Playground gebündelt).
3. `content.xml` importieren – Bilder werden von den GitHub-URLs in die Mediathek geladen, Beitragsbilder über den Export verknüpft.
4. Aufräum-Schritt: Standard-Inhalte löschen, Startseite = „Fische", Beitragsseite = „Unterwasser-News", Site-Icon und Logo setzen.

Das Theme bringt Header (mit Menü + Suche) und Footer als eigene Templates mit; die Menü-Links sind relativ und funktionieren daher auf jedem Host.

## Lokal testen

WordPress-Playground-CLI mit lokal ausgelieferten Dateien:

```
npx -y http-server . -p 8080 --cors -s          # Terminal 1 (in diesem Ordner)
npx -y @wp-playground/cli@latest server --blueprint=./blueprint.json   # Terminal 2
```

Hinweis: Für den vollständig lokalen Test müssen die URLs in `blueprint.json`, `content.xml` und `theme/fish.zip` auf `http://localhost:8080` zeigen.
