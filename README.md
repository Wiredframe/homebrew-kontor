# Wiredframe/homebrew-kontor

Homebrew-Tap für [Kontor](https://github.com/Wiredframe/kontor-buchhaltung) – die lokale, offline
Buchhaltungs-App für KSK-versicherte Freiberufler (macOS 15+).

## Installation

```bash
brew tap wiredframe/kontor
brew trust --cask wiredframe/kontor/kontor
brew install --cask --no-quarantine kontor
```

- `brew trust` ist seit **Homebrew 6** für Fremd-Taps Pflicht (ein Cask darf Code ausführen).
- `--no-quarantine` überspringt den Gatekeeper-Block, weil Kontor **nicht notariell signiert** ist
  (kostenlos & Open Source).

Schon ohne das Flag installiert und macOS blockt den Start? Dann einmalig:
`xattr -dr com.apple.quarantine "/Applications/Kontor.app"`.

Mehr dazu unter [Kontor → Installation](https://github.com/Wiredframe/kontor-buchhaltung#installation).
