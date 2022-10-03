cask "flasher" do
  version "0.0.1-dev.3"
  sha256 "198d1806f3e8a61db94734a87b9d30952ff8602fc0182f6f14e10814caa92bab"

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
