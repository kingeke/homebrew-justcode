class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.1/justcode-darwin-arm64"
      sha256 "58d0e52e8eff190daf3f8bf50b31b028888040388713987788e643d97d736c6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.1/justcode-linux-arm64"
      sha256 "7517e94e964d40147cce46ee5ad40925a7ccaed1406ac7ea9388455a3d4b1f2d"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.1/justcode-linux-x64"
      sha256 "5773859543e8aabdad5f2a8652b5ed8a330dab4ae7dd4a4bd9c2cac92becbef3"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
