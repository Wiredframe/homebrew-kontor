cask "kontor" do
  version "1.8"
  sha256 "9e074bad00cd8ec079be4efb87bcec98e873043f9959d7d7786d312f64bc31c2"

  url "https://github.com/Wiredframe/kontor-buchhaltung/releases/download/v#{version}/Kontor-#{version}.zip"
  name "Kontor"
  desc "Lokale, offline Buchhaltungs-App für Freiberufler (EÜR, UStVA, KSK)"
  homepage "https://github.com/Wiredframe/kontor-buchhaltung"

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
