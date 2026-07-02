class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.1/justcode-darwin-arm64"
      sha256 "705f88dd4bd2327a63a5abf8970dd91db946ec86146001ebaed2fda13941951a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.1/justcode-linux-arm64"
      sha256 "100c5b251935215c33d7ac9cfecff724331db6b61b36dfe995e8edeffe012194"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.1/justcode-linux-x64"
      sha256 "2d2c653129eb44bd2d9a8168d14b67f0d45fc39dbbd17b254d30b14ed4b66d28"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
