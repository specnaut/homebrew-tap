class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.1/specnaut-macos-arm64"
      sha256 "b01434465cfee1c386745320a802bafce03c9394da409fec155c96abe39a9252"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.1/specnaut-macos-x64"
      sha256 "911752d582a828d196a7550c4b9e97042127bf9c254b81fb37a84ad67096c22f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.1/specnaut-linux-arm64"
      sha256 "683297ebfbb6952688476fcebcda38d6f30a6ccd210ad35988990ebb96b003bf"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.1/specnaut-linux-x64"
      sha256 "15f3b14afb2f0472cb46e56000836d8a9ad15b419a97b72bc9bdecbd338abe8e"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
