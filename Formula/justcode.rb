class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.5/justcode-darwin-arm64"
      sha256 "0d5e6491798d11bf5f583d26b79f47fdc7d5a85f40e824fb8fc23525d7dbb0d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.5/justcode-linux-arm64"
      sha256 "57b6170a546be74f3c6d9b0fee25607e5469290497b4023b22099e40d26ed19a"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.3.5/justcode-linux-x64"
      sha256 "b8eeb101607c7e067da3b076b1494056bf4dbb59171dba1ec863d270b12b4dce"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
