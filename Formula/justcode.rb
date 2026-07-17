class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.6/justcode-darwin-arm64"
      sha256 "56c4044c58c7c8e13d18abd407278b7f846d602c17eaf5b93fe6fc4e7d1127e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.6/justcode-linux-arm64"
      sha256 "65bfa0dc321a81a4513966a07f68854f6eb98121cdd47312c7484a447bf8c278"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.6/justcode-linux-x64"
      sha256 "a49136474f1b70109e51f61d6b19de214b1315bcb2324a21a4279f281150ca2c"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
