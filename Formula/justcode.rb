class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.1/justcode-darwin-arm64"
      sha256 "956b48820bf64f72a75302373c4d95f2307fd8a95ff52ebeecbfebf155d4be84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.1/justcode-linux-arm64"
      sha256 "97dfc3ce270b51a358fd4edd70172866421daa30cbf04ff77115b2b09a0115e2"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.1/justcode-linux-x64"
      sha256 "350ceef5858ee9db073219c6e6972e63c5261fe1ec9e76a4f9d2bedd7606fb5c"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
