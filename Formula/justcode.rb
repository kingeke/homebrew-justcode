class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.2/justcode-darwin-arm64"
      sha256 "94cda7f6eef45ce910d779fb31b48080fd939b194deb591622d381430c445f93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.2/justcode-linux-arm64"
      sha256 "5da9a8437a13d46dba0c90d9525316556a2cf4ecaff7bd7ac464a5872c940539"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.2/justcode-linux-x64"
      sha256 "1d12f54e21d8da413aa777658a586577bb5c5a1164af68aa05fc82cb64612480"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
