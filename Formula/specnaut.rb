class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.0/specnaut-macos-arm64"
      sha256 "bf61b239055f28a9579b823d0080d0272ddde092bce248bea15bba79073b2bdc"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.0/specnaut-macos-x64"
      sha256 "0336991d444b1a57ca2c15324df078c95d7ac65997713d9b87facf7056774293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.0/specnaut-linux-arm64"
      sha256 "c4e9dd23a9ce890acd28dc3d4f5d3d828eaa0c4e849cc5f288db42a32f2222dc"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.3.0/specnaut-linux-x64"
      sha256 "05a52883d2efd337fad243cf0f84b5f93a2bf8cc3516f5f63256b769a02ef38a"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
