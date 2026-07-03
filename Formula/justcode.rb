class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.3/justcode-darwin-arm64"
      sha256 "555983ff2910efdd8148e24afff8ccc2327121169f663b4fad9054775d360f10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.3/justcode-linux-arm64"
      sha256 "bd02ab7d923c412ba8ba97e707d63b55cfd2ef4b4991cd3a29ad8545282ebd77"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.3/justcode-linux-x64"
      sha256 "9072b29bb47ee305106f25f01006016b5ee0e3300eb051089d249b920e948eea"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
