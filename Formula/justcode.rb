class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.0/justcode-darwin-arm64"
      sha256 "be73ba10816c192b42a8001bba63513eccd367cd1216429a39213244df304ba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.0/justcode-linux-arm64"
      sha256 "ebbb5d37469c5b1f583378e59aebbfc51e5213fbdaeef9bc21c72c8911e1bf92"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.0/justcode-linux-x64"
      sha256 "10dc0ccb67cda4b72c73b4ac9e80495a8697e50c4bb31b80cdd339097dd2b358"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
