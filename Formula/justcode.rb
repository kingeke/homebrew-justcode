class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.10/justcode-darwin-arm64"
      sha256 "934c02d9b9c906dc091865171e16ef7b298bbd1d1a50b9e6d4adc242801df9ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.10/justcode-linux-arm64"
      sha256 "703a1498f400410fddde7c8a9647a373a84e1eeff832200ea60d6e7b19f89d2e"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.10/justcode-linux-x64"
      sha256 "14d2a172a385dc5f7ff8c73545109bcec99110080dc02010cbadecf6398bf8e5"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
