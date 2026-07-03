class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.4/justcode-darwin-arm64"
      sha256 "4709e65c6ca9828654794665f40c2fd57b229a91ff0090e292ad2293e719dc11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.4/justcode-linux-arm64"
      sha256 "885dc808291db249bfe6eff24553dcc91de6f23446b6dcd55da67008f47a0363"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.2.4/justcode-linux-x64"
      sha256 "2b0f0331aef5b039f97172659a42962e9ed2cad8620c74022ee9171d57f76197"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
