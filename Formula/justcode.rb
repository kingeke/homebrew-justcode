class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.4/justcode-darwin-arm64"
      sha256 "9bd1b3f346e5bbce6dd587e786ca3b21f3815404b296040977efcbd1dc41aa8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.4/justcode-linux-arm64"
      sha256 "96fdf22f79b2f648434259cba3c9ba306329bda47d47375a4e8a9608c883f3a4"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.4/justcode-linux-x64"
      sha256 "04eba61773bb832f06c62c10ee35f40b1d3f10716dbfb737faa6a4d41ae63b1a"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
