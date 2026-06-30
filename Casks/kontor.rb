cask "kontor" do
  version "1.1"
  sha256 "c144f90515426f9b6955cbddd35a640a67b88279eb7726ea62fce442b43d84cb"

  url "https://github.com/Wiredframe/Kontor/releases/download/v#{version}/Kontor-#{version}.zip"
  name "Kontor"
  desc "Lokale, offline Buchhaltungs-App für Freiberufler (EÜR, UStVA, KSK)"
  homepage "https://github.com/Wiredframe/Kontor"

  depends_on macos: ">= :sequoia"

  app "Kontor.app"

  caveats <<~EOS
    Kontor ist bewusst NICHT notariell signiert (kostenlos, Open Source).
    Falls macOS den Start blockiert, die Quarantäne entfernen:
      xattr -dr com.apple.quarantine "/Applications/Kontor.app"
    Oder gleich ohne Quarantäne installieren:
      brew install --cask --no-quarantine kontor
  EOS
end
