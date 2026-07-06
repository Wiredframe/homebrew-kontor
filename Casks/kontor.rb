cask "kontor" do
  version "1.5"
  sha256 "e793d53495c60178702e584b014b2736815d0541e66ffc6476ed5639d807eb82"

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
