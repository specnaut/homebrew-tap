class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.1/specnaut-macos-arm64"
      sha256 "6a269694967df14ecf48124e5b9af016929f6b217dd21c2c35f0bccde1ea46c6"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.1/specnaut-macos-x64"
      sha256 "777483020bbb9ce0cf85bf853f13977937674890247fe0911f3deb52e1da46cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.1/specnaut-linux-arm64"
      sha256 "327a68b6c03d17dd304bd7b39f3ae9a808c9243144682242c7a3f83c9ed5f5b3"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.1/specnaut-linux-x64"
      sha256 "4e19d6711c1270dc346115cc57c6aa6b883ba1028b68f24ed5f990d68d8e4257"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
