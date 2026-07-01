class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.7/justcode-darwin-arm64"
      sha256 "09281529b52b4d34ac186d64c549875e7344ee3ab057be5e7f90ea3b3ed0ff7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.7/justcode-linux-arm64"
      sha256 "99d3dd20cb4b6232daa9246a373ada577fe4866cabfc99c52fd51857fc267edb"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.7/justcode-linux-x64"
      sha256 "510abddd2e9057b72b7bc02014809c847fdab4165a5b5e70e96f8a5c4bd182db"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
