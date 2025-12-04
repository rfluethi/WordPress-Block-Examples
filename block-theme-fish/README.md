# Fisch Block Theme - WordPress Playground Blueprint

Ein WordPress Block Theme mit Fisch-Thema für WordPress Playground.

## Verwendung

### Online Demo
Öffne den Blueprint direkt in WordPress Playground:
```
https://playground.wordpress.net/?blueprint-url=https://raw.githubusercontent.com/rfluethi/WordPress-Playgrounds/main/block-theme-fish/fish-theme-blueprint.json
```

### Was macht dieser Blueprint?

1. **Erstellt eine WordPress-Instanz** mit PHP 8.2 und der neuesten WordPress-Version
2. **Installiert und aktiviert** das Fisch-Theme aus dem GitHub Repository
3. **Importiert Bilder** von Fischen aus dem GitHub Repository:
   - Clownfisch
   - Diskusfische
   - Labyrinthfische
   - Malabarbaerbling
   - Schleierschwanz-Goldfisch
   - Siamesischer-Kampffisch
   - Wallpaper mit Meeresriff
   - Fisch-Titelseite (zugeschnitten)
4. **Erstellt eine Seite** mit allen importierten Fischbildern
5. **Setzt die Seite als Startseite**

## Struktur

```
block-theme-fish/
├── fish-theme-blueprint.json  # Blueprint-Konfiguration
├── README.md                  # Diese Datei
├── media/                     # Fischbilder
│   ├── Clownfisch.webp
│   ├── Diskusfische.webp
│   ├── Labyrinthfische.webp
│   ├── Malabarbaerbling.webp
│   ├── Schleierschwanz-Goldfisch.webp
│   ├── Siamesischer-Kampffisch.webp
│   ├── Wallpaper-with-a-sea-reef.webp
│   └── cropped-Fisch-Titelseite.webp
└── theme/
    └── fish.zip               # Theme-Dateien
```

## Technische Details

- **PHP Version**: 8.2
- **WordPress Version**: Latest
- **Theme-Quelle**: GitHub Repository (raw download)
- **Bilder-Quelle**: GitHub Repository (raw githubusercontent)
- **Login**: admin / password

## Änderungen

### Version 1.1
- ✅ Repository-Namen korrigiert (WordPress-Playgrounds statt WordPress-Block-Examples)
- ✅ Theme-URL auf Raw-Download-URL geändert
- ✅ Bilder-URLs korrigiert
- ✅ Doppelte Steps entfernt
- ✅ Landing Page auf Frontend gesetzt
- ✅ Automatische Erstellung einer Startseite mit allen Bildern
- ✅ `runPHP` Step für bessere Bildintegration

## Fehlerbehebung

Falls die Bilder nicht angezeigt werden:
- Prüfe, ob die Dateien im GitHub Repository unter `block-theme-fish/media/` vorhanden sind
- Stelle sicher, dass der Commit gepusht wurde
- Die Bilder müssen als Raw-URLs verfügbar sein

Falls das Theme nicht geladen wird:
- Prüfe, ob `fish.zip` unter `block-theme-fish/theme/` existiert
- Die URL muss auf die Raw-Download-Version zeigen (nicht auf die Web-Ansicht)
