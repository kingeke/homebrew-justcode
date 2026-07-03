class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.5/justcode-darwin-arm64"
      sha256 "77b2b2e47f38e6da25e3f59a3c0562dffa5e79d45d83b8921accbd46add678e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.5/justcode-linux-arm64"
      sha256 "f42fc628e119497c73a7c92629c4bf98500088042674cd22e38db4c1d3abdc3b"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.5/justcode-linux-x64"
      sha256 "10cdf6a5b9424db0877ba35eadec6032dc1a22376f581c7fc1e7d543d17158b1"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
