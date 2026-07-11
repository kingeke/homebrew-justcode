class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.3/justcode-darwin-arm64"
      sha256 "ee4cc2967bdb987932bbd22f3a745ed25527d44d3932c34840ac0ed8bff248d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.3/justcode-linux-arm64"
      sha256 "721893ef2ad7155694cff784999440654ed0dc51e894dc0f79e5d76449b07f39"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.3/justcode-linux-x64"
      sha256 "ea445ec0f38c0de560f4ab4504837ea0f3c0b0cf3e5a70e3bb142ed151812412"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
