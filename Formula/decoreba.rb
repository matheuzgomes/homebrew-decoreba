class Decoreba < Formula
  desc "Personal command vault, organized by context"
  homepage "https://github.com/matheuzgomes/decoreba"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.3.0/decoreba-darwin-amd64"
      sha256 "431fb2769238e2cf3cfec16c177ee0cabb769005cd393e43e71db4b6ec783c1d"
    elsif Hardware::CPU.arm?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.3.0/decoreba-darwin-arm64"
      sha256 "7ebbce4fd6c358ccdaf6ba8b76163478390df92f343b47378dc7320509545f7f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.3.0/decoreba-linux-amd64"
      sha256 "5f2acaf06a5ef890327983c6fb8cf9c2ba45ec20249196e09e0290e6fd4062e8"
    elsif Hardware::CPU.arm?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.3.0/decoreba-linux-arm64"
      sha256 "98df82e660a38f422ff52015d9633dcde1bb22a4319204e4c74453aba4e27ada"
    end
  end

  def install
    bin.install Dir["decoreba-*"].first => "decoreba"
  end

  test do
    assert_match "decoreba", shell_output("#{bin}/decoreba version")
  end
end
