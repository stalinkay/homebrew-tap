cask "markup-hero" do
  version "1.2.2"
  sha256 "dc08ba340df508dd8326c36a87c7ddea80df71c3a009fddbbb44f158226d01b5"

  url "https://storage.googleapis.com/markuphero-dist/MarkupHero-#{version}.dmg"
  name "Markup Hero"
  desc "Markup Hero is the screenshot and annotation tool made for the web. Works on Mac, Windows, Linux and Chrome."
  homepage "https://markuphero.com"

  livecheck do
    url "https://markuphero.com/download"
    regex(/href=.*?MarkupHero-(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "MarkupHero.app"
end
