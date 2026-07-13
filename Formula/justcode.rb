class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.4/justcode-darwin-arm64"
      sha256 "63acfc05800f19b4fe6f9a6b80d31502b129a637b876cc64f052e29d9be23a81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.4/justcode-linux-arm64"
      sha256 "51f78a219cbed4dea099cf96106e1e7d55023e78d54bce07ff7da24d665534b7"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.4.4/justcode-linux-x64"
      sha256 "4b01a6e9be10f6325d5a12c4de854517e59808d5d46604cac8a80733cbcc1e53"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
