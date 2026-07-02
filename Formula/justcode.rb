class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.9/justcode-darwin-arm64"
      sha256 "2447655c0bf281cd07c6d3a5f19a030533f88cb0ebf7ba30e652de564c32b044"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.9/justcode-linux-arm64"
      sha256 "bf71cea667b67214ecf4654ffd1ecf25a2758fe36ca6a367dad580b2fd65020f"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.9/justcode-linux-x64"
      sha256 "88d410cce45304039e4cd71da545176e64e7a357b23cf8bc0c297184f843df35"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
