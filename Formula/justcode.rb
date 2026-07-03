class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.0/justcode-darwin-arm64"
      sha256 "c06074035d06b78af609f3c3393dc9fc32fcc23ffbfabadae0e09e819c3cfdc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.0/justcode-linux-arm64"
      sha256 "1d5a9198c71d6313d1918e1a4623d2743bbc1b5ba448c936f510c35a01534ba3"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.0/justcode-linux-x64"
      sha256 "975c26a945d6123c9583edcad0f49a5acbeb450af23acd1af2f38dc1d11704ef"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
