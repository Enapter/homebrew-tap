cask "flasher" do
  version "1.0.0-rc.2"
  sha256 "5d900654f6f4cf7e5e30600c381922066bd8f9364b7a559ea0d1e9023c2c5501"

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
