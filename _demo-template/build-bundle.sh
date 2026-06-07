#!/usr/bin/env bash
#
# build-bundle.sh – erzeugt aus einem Demo-Ordner ein selbstenthaltenes
# Playground-Bundle (bundle/<ordnername>.zip).
#
# Aufruf:
#   ./build-bundle.sh            # im Demo-Ordner ausführen
#   ./build-bundle.sh <ordner>   # oder Ordner als Argument
#
# Erwartete Struktur im Demo-Ordner:
#   blueprint.json   (verweist per jsDelivr-URL auf theme/ und content.xml)
#   content.xml
#   theme/<name>.zip
#
# Das Skript kopiert blueprint.json, content.xml und theme/ in ein Bundle,
# wandelt darin die URL-Verweise auf die EIGENEN Dateien in "bundled"-Pfade um
# (Theme + content.xml liegen dann im ZIP) und packt alles zu bundle/<name>.zip.
# Bilder/Schriften bleiben als externe jsDelivr-URLs (werden beim Import geladen).

set -euo pipefail

DIR="${1:-.}"
DIR="$(cd "$DIR" && pwd)"
NAME="$(basename "$DIR")"
cd "$DIR"

[ -f blueprint.json ] || { echo "FEHLER: blueprint.json fehlt in $DIR"; exit 1; }
[ -f content.xml ]    || { echo "FEHLER: content.xml fehlt in $DIR"; exit 1; }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cp blueprint.json "$TMP/blueprint.json"
cp content.xml "$TMP/content.xml"
[ -d theme ] && cp -r theme "$TMP/theme"

# URL-Ressourcen auf eigene Dateien -> bundled umschreiben
python3 - "$TMP/blueprint.json" <<'PY'
import json, sys, re
p = sys.argv[1]
bp = json.load(open(p, encoding="utf-8"))
def to_bundled(res):
    if isinstance(res, dict) and res.get("resource") == "url":
        url = res.get("url", "")
        m = re.search(r"(/theme/[^/]+\.zip)$", url)
        if m:
            return {"resource": "bundled", "path": m.group(1)}
        if url.endswith("/content.xml"):
            return {"resource": "bundled", "path": "/content.xml"}
    return res
for step in bp.get("steps", []):
    if "themeData" in step: step["themeData"] = to_bundled(step["themeData"])
    if "pluginData" in step: step["pluginData"] = to_bundled(step["pluginData"])
    if "file" in step:      step["file"]       = to_bundled(step["file"])
json.dump(bp, open(p, "w", encoding="utf-8"), indent=2, ensure_ascii=False)
PY

mkdir -p bundle
( cd "$TMP" && zip -rqX "$DIR/bundle/$NAME.zip" blueprint.json content.xml theme -x '*.DS_Store' )
echo "Bundle erstellt: bundle/$NAME.zip"
unzip -l "bundle/$NAME.zip"
