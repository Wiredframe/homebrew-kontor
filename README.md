# Wiredframe/homebrew-kontor

Homebrew-Tap für [Kontor](https://github.com/Wiredframe/Kontor) – die lokale, offline
Buchhaltungs-App für KSK-versicherte Freiberufler (macOS 15+).

## Installation

```bash
brew tap wiredframe/kontor
brew trust --cask wiredframe/kontor/kontor
brew install --cask kontor
```

Der `brew trust`-Schritt ist seit **Homebrew 6** nötig: Fremd-Taps müssen einmalig bestätigt werden
(ein Cask kann Code ausführen).

Kontor ist **nicht notariell signiert** (kostenlos & Open Source). Wenn macOS den Start
blockiert, hilft eines davon:

```bash
# Quarantäne nachträglich entfernen …
xattr -dr com.apple.quarantine "/Applications/Kontor.app"

# … oder gleich ohne Quarantäne installieren:
brew install --cask --no-quarantine kontor
```

Mehr dazu unter [Kontor → Installation](https://github.com/Wiredframe/Kontor#installation).
