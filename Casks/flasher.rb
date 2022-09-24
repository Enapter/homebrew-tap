cask "flasher" do
  version "0.0.1-dev.2"
  sha256 "f520d588854b009d4c255602eb057a07c0c8793e4f8f25b0d6b8ed280cf97249"

  url "https://downloads.enapter.com/enapter-flasher/#{version}/Enapter%20UCM%20Kit%20Flasher-#{version}-universal.dmg"
  name "Enapter UCM Kit Flasher"
  desc "Application for uploading latest Enapter firmwares for Espressif ESP32 chip for wide range Enapter UCM Kits."
  homepage "https://developers.enapter.com/"

  app "Enapter UCM Kit Flasher.app"

  livecheck do
    url "https://flasher.enapter.com"
    regex(/href=.*?\/.*Flasher-?(.*)-universal\.dmg/i)
  end

  zap trash: [
    "~/Library/Application Support/flasher-enapter",
  ]
end
