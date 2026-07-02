class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.12/justcode-darwin-arm64"
      sha256 "f5e243cfd4a19ead785e3eaad6fcdbf0e46c2be6c2ecc2c7a8c2fcd82b758f27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.12/justcode-linux-arm64"
      sha256 "c56e987c4e696d35624ad899ac146df212251b47ba8d587943fbe1b050546788"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.12/justcode-linux-x64"
      sha256 "aad5ea19f1392e6f75104bace7c3f1e03518d82cc70286bf83ee96a900ef0a5d"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
