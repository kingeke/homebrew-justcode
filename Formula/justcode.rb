class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.5/justcode-darwin-arm64"
      sha256 "7e2d5ad9b7b8da3594eca99d91e228d99f82ea78cae30fc8b2698d6f9940f041"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.5/justcode-linux-arm64"
      sha256 "89d682eb7669e7976ffc625c813fe10bffb52162ebf1c9c7cbf0a2742857893b"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.5/justcode-linux-x64"
      sha256 "9883564220fb8def71366d238641683da6214433352253fa06d4938600e8299f"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
