class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.2/justcode-darwin-arm64"
      sha256 "0ba181a840a482f1ab9a8f0653976f120fb91f38fd79d298b3feab83c6485046"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.2/justcode-linux-arm64"
      sha256 "3321d29f404f8f0fce213c85a4e137979682d946358efd6fff91a408438e8c23"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.2/justcode-linux-x64"
      sha256 "8deddfeaad414fe99a9b550318df51b5cdf80a6b025afeb2df76f11d753a12db"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
