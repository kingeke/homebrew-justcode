class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.6/justcode-darwin-arm64"
      sha256 "d8a5e71cfc611ee07cca7d6b5d23b0170a79ffff5861b59aec255015f11fa715"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.6/justcode-linux-arm64"
      sha256 "ca239c0451e55f564a0aedea54dd93ba90ca652eaf111623411cdd8d3701b23c"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.6/justcode-linux-x64"
      sha256 "66929cd2b5baad35713cde0ab6e07d268ed306f3eda4b10642309f4871077abb"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
