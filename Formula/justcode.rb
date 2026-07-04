class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.3/justcode-darwin-arm64"
      sha256 "b7fd9cea736e333dc5f360f6d5cba29f7480eefd3cadcff7e795e1ddb180a1cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.3/justcode-linux-arm64"
      sha256 "ae89a4a959c7ae2cfc290662ed97e978bfac574d4c918e564d08565f21d1a6e7"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.3/justcode-linux-x64"
      sha256 "9224e5601fdab4f58dea9d9ef0f2e357e7d87a85fb79a22112312556d0d2334d"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
