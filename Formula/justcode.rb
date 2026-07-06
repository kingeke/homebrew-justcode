class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.7/justcode-darwin-arm64"
      sha256 "10edaed48e6dead65458b696f4a95249e4182cf5229093b7cbab971a38bed87a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.7/justcode-linux-arm64"
      sha256 "38559c5ac5cfaa11774773d4faa11027719e260a5e14b5daafc3e0bf94ddc1b0"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.7/justcode-linux-x64"
      sha256 "f304c5f3506b4d74faca741c2c652aec324da5e2766d53d249e40f6835039f8e"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
