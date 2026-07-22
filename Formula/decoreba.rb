class Decoreba < Formula
  desc "Personal command vault, organized by context"
  homepage "https://github.com/matheuzgomes/decoreba"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matheuzgomes/decoreba/releases/download/vVERSION/decoreba-darwin-amd64"
      sha256 "DARWIN_AMD64_SHA256"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/matheuzgomes/decoreba/releases/download/vVERSION/decoreba-darwin-arm64"
      sha256 "DARWIN_ARM64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/matheuzgomes/decoreba/releases/download/vVERSION/decoreba-linux-amd64"
      sha256 "LINUX_AMD64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/matheuzgomes/decoreba/releases/download/vVERSION/decoreba-linux-arm64"
      sha256 "LINUX_ARM64_SHA256"
    end
  end

  def install
    bin.install Dir["decoreba-*"].first => "decoreba"
  end

  test do
    assert_match "decoreba", shell_output("#{bin}/decoreba version")
  end
end
