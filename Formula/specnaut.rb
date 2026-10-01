class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.1/specnaut-macos-arm64"
      sha256 "8a3fb162bd10d9772dec2b8334c09e04d1c56a3b248b338731b5d67982e0a4b9"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.1/specnaut-macos-x64"
      sha256 "cc97c40bd0cf528fa1313b28563e0e258ca004c948ba88db8c7e065c4b41f757"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.1/specnaut-linux-arm64"
      sha256 "5108ae8c2b2e40da686ec429d4578eb4ce6df3318ee1daf60a6de676cc071273"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.1/specnaut-linux-x64"
      sha256 "2306099206cc53e1542b168e8358b2942ef09d5312af3fd724dc0dde02feb313"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
