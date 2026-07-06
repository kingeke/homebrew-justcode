class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.10/justcode-darwin-arm64"
      sha256 "7381114c1f41186ff3f40fa50a155b2682335241eeb772ca2d5d01bd1ef21b9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.10/justcode-linux-arm64"
      sha256 "9f1156a8e0d96645786761ae83bf5d21ad05f00941ed7b6f907144de985537a4"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.10/justcode-linux-x64"
      sha256 "bcd99f11fc080bff71dd54bf0b011d0808b9849cf8c498feb56ed6585a111fa5"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
