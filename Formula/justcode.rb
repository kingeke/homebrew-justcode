class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.8/justcode-darwin-arm64"
      sha256 "29aaac8cec29fa19a8f8247ba391ddf45caa7ed6a8ed9ef771bf63d433d10ab8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.8/justcode-linux-arm64"
      sha256 "46a3a4c072f51da159d4ca37d26017e35c9265448e9f587a9612652cf07e3984"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.8/justcode-linux-x64"
      sha256 "fd873043f22801706ddc594aec784af4c95db4e36f173f330d2e3355ebf160bb"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
