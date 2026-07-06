class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.8/justcode-darwin-arm64"
      sha256 "3c297d32c30dadfacb95ed082dca5a9b7fe73c579fdf13b13b43f0fbc9518cd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.8/justcode-linux-arm64"
      sha256 "c51343fc68d8ff5e243b08fb150b074b58952f3391888d3db11bcc40a2447ed5"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.8/justcode-linux-x64"
      sha256 "c6dbfba5c11df0978f749b8cc7c3f50a9eee50c5b0f4950cbb0f36488ed80bda"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
