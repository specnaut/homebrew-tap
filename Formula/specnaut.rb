class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.0/specnaut-macos-arm64"
      sha256 "0433f0bd665c73610f0b2238173e4c497a6194df82b597a12bd402c7f6f3a6a0"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.0/specnaut-macos-x64"
      sha256 "33f50a558e1b4e3ed5716fd834a422a63033a7495afa8535be90743a7e27aec6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.0/specnaut-linux-arm64"
      sha256 "7b256c10db61d1d847dc0fc9ce921f7c7b931b5a0561af39fdcf0e1e39142498"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.0/specnaut-linux-x64"
      sha256 "d66759f71ae67a4a7162b874dd3e2f4c435aeddf73f14f95d29dfdb22d8a9fa3"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
