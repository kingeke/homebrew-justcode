class Justcode < Formula
  desc "Interactive terminal coding assistant CLI"
  homepage "https://github.com/kingeke/justcode"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.11/justcode-darwin-arm64"
      sha256 "604be072cee14f0f018e2cb1ee157f40bf1f56ce415987f1aaec241f80e9be24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.11/justcode-linux-arm64"
      sha256 "b9566d32324f3009046b87709f2e912fe3d3725eeeba69a8895a58b075452979"
    end
    on_intel do
      url "https://github.com/kingeke/justcode/releases/download/v0.1.11/justcode-linux-x64"
      sha256 "0b2c3065376be828c05e9958242138b9ffaa2e169f20e93d32358df464a285e2"
    end
  end

  def install
    bin.install Dir["*"].first => "justcode"
  end

  test do
    assert_match "JustCode", shell_output("#{bin}/justcode --help")
  end
end
