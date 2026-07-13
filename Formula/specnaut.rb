class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.1/specnaut-macos-arm64"
      sha256 "8a2d9d3d1acbf68b2ff32dca80bded62c9461452fc2ce32b28d5c9ab2736392c"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.1/specnaut-macos-x64"
      sha256 "bd0b5518be39d4528315884657624896161ba5b7eef6b09b2eb020beb7a1f31f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.1/specnaut-linux-arm64"
      sha256 "4751c3e2d5fd15b47d9cd9f21af03678c0b540aca37012bc4f2f281a457ddf99"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.1/specnaut-linux-x64"
      sha256 "ee896d864f1d36bbd202a1893ec2412c3bc7075a414a2f979967ca88ed1e9dfc"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
