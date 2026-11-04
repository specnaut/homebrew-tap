class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "9.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.1.0/specnaut-macos-arm64"
      sha256 "79b9d2d188446146288febf0728e0c2a24c064f685054fb1ef7da9b706c3b45a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.1.0/specnaut-macos-x64"
      sha256 "8e8e72490b100f8d530d68ac90659aa19a651c989cd66e26872954457e8e255d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.1.0/specnaut-linux-arm64"
      sha256 "85b405319506e9e3d4c3c5bbabd919538d425dda39cda01d913a6edfbe2ab01b"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.1.0/specnaut-linux-x64"
      sha256 "1d065c6e82940259a3d3cae3ce3f242c6607b1660f4c7e810a264af950b706d9"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
