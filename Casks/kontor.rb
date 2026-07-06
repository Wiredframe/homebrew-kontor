cask "kontor" do
  version "1.4"
  sha256 "e38260ce2a6bbd2efa4b580b65747e45ebf1f3104d6143a9fade0b05804433e2"

  url "https://github.com/Wiredframe/Kontor/releases/download/v#{version}/Kontor-#{version}.zip"
  name "Kontor"
  desc "Lokale, offline Buchhaltungs-App für Freiberufler (EÜR, UStVA, KSK)"
  homepage "https://github.com/Wiredframe/Kontor"

  depends_on macos: :sequoia

  app "Kontor.app"

  caveats <<~EOS
    Kontor ist bewusst NICHT notariell signiert (kostenlos, Open Source).
    Falls macOS den Start blockiert, die Quarantäne entfernen:
      xattr -dr com.apple.quarantine "/Applications/Kontor.app"
    Oder gleich ohne Quarantäne installieren:
      brew install --cask --no-quarantine kontor
  EOS
end
