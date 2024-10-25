cask "flasher" do
  version "1.2.4"
  sha256 "32245030e8cb084fa91c4d30a4db1725433b293f5a2b1705efbbcc5b9fbcdb97"

  url "https://downloads.enapter.com/enapter-flasher/#{version}/Enapter%20UCM%20Kit%20Flasher-#{version}-universal.dmg"
  name "Enapter UCM Kit Flasher"
  desc "Application for uploading latest Enapter firmwares for Espressif ESP32 chip for wide range Enapter UCM Kits. Enapter UCM Kit is based on several important open-source and free-to-use components. This provides possibilities for personal technology development and hardware prototyping all of which are extremely helpful for developing innovative, cost-efficient smart energy solutions for emerging markets."
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
