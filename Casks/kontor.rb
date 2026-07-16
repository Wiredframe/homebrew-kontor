cask "kontor" do
  version "2.0"
  sha256 "f9f798b53d75f26e675ab38ff1da328ff0e05a972c26d1a5858c2f52271cce77"

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
