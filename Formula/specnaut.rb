class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "9.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.2.0/specnaut-macos-arm64"
      sha256 "cb2a8e05d5fa365684e292d5a4bb3e65f469f653e9e5070530da6a2db030f834"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.2.0/specnaut-macos-x64"
      sha256 "c8a93da1dd2c5f2d7c2c0a16cf9b4726b25a5f9b8ea913f0342a7710f6fe7bef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.2.0/specnaut-linux-arm64"
      sha256 "5e42e3d4fc7658beb70652de24ca725b1a9f8cb73a7d651d068e318a11052726"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.2.0/specnaut-linux-x64"
      sha256 "bb08923b2abe659c66cc2b3b309e7ff2dad15a4474b51ce079518b40374de782"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
