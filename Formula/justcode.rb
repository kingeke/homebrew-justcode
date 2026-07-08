class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.0/justcode-darwin-arm64"
      sha256 "1d14edf9a296227b3205dd3bade3cf9e086df3b8d73c0f48290cd1fb6c0b035a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.0/justcode-linux-arm64"
      sha256 "88b0468621488b74d8c61cd184e063322e1555f0e1aa3aafc37c5d7db9d13c29"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.0/justcode-linux-x64"
      sha256 "b11f4e43057f9be351efcabff74b23530915780fbe81f7c2486ccc95c4697886"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
