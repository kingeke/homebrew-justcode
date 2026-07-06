class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.9/justcode-darwin-arm64"
      sha256 "bcf91396110bcaba8b48ec71dcfa95243cc7bb51c2160508ae54370f14911b41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.9/justcode-linux-arm64"
      sha256 "68a09d62c7bf1efd25e8f3231f4a1dd269f16efbb5e207985b7a1f4ab6a28047"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.9/justcode-linux-x64"
      sha256 "d1a5e8d9260a90ea2d9c2cf8beac1ec35689f7bad7a112e4fe71cc600448e0d9"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
