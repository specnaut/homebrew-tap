class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "9.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.3.0/specnaut-macos-arm64"
      sha256 "dccc1d799580cbb09bb21b90d28a8187047c04f2ffbe3105ec6609aa52a9804e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.3.0/specnaut-macos-x64"
      sha256 "84bb727895664e2af0eaadf5374e6392772a365ad7c5af0e749634d32c7a52db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.3.0/specnaut-linux-arm64"
      sha256 "1800861f36ffbd4333eefb64dc899b1a4c5fb985c7cf971bc461e9fec5512d0e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.3.0/specnaut-linux-x64"
      sha256 "9742b515cb541907aaf815abd0dcbca615dabd63f466b72d4a4174ca54393e11"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
