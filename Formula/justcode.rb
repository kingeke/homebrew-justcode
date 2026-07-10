class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.2/justcode-darwin-arm64"
      sha256 "8ab6a8c3e207a3406c54fe1cd9b33fde5911c685041b45c0ce67c9a9fe91abc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.2/justcode-linux-arm64"
      sha256 "16787e9f615befcf293c2ae435feb51a767289b0abd0fea7102154d58356b9f1"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.2/justcode-linux-x64"
      sha256 "5a756afdbad4a36cf1fdb696b8bfe905784151100b286560bb5cb36007bb2a02"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
