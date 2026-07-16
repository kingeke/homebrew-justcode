class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.5/justcode-darwin-arm64"
      sha256 "6530b45a1bc29e75703df2be2ddf203802ea5dd0a46cfc9b3f0c61358d4b5859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.5/justcode-linux-arm64"
      sha256 "d7955886064625bfed57dd677e16aa3d896dcc5565568a942628142c37358c33"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.5/justcode-linux-x64"
      sha256 "84696bae9f9053d6a1c01f53e040053d90a87c1629fc94653127873405beaaa9"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
