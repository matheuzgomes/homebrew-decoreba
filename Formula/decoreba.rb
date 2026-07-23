class Decoreba < Formula
  desc "Personal command vault, organized by context"
  homepage "https://github.com/matheuzgomes/decoreba"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.4.0/decoreba-darwin-amd64"
      sha256 "ab2fe5542c9f3a86245e6838c4c099065ece68d782b4b54c09fbf73cc8bf58e1"
    elsif Hardware::CPU.arm?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.4.0/decoreba-darwin-arm64"
      sha256 "cec16685b4956917b8d48095eb65318902093fc3ed2e4f30e00073f91f6b4f62"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.4.0/decoreba-linux-amd64"
      sha256 "6229e48e95b7f08753aca61e5677253c2c1a4254bf5000d622d72bcf3e7627b6"
    elsif Hardware::CPU.arm?
      url "https://github.com/matheuzgomes/decoreba/releases/download/v0.4.0/decoreba-linux-arm64"
      sha256 "50c37873e8240db72d43bc8d230ffd18f5bb7ba9d68abf2bcc4e0e6eae8ec55c"
    end
  end

  def install
    bin.install Dir["decoreba-*"].first => "decoreba"
  end

  test do
    assert_match "decoreba", shell_output("#{bin}/decoreba version")
  end
end
