class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.19.0/specnaut-macos-arm64"
      sha256 "81b545016cadb8a9e5ef0cf476a80f7cf98e7c36669591d660f9d5c04a74e8a2"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.19.0/specnaut-macos-x64"
      sha256 "ce20edf382b67de6e44770829f97e85d1a4e8776750ff5b994b0521a5e39fb86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.19.0/specnaut-linux-arm64"
      sha256 "d1154238ae73f0e258ca9c9d68a5cafc506f3976288bd2e24f2727efa9d01db7"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.19.0/specnaut-linux-x64"
      sha256 "246d23ba2c69b998559703a48e60e6464f7bdcf2f40641dff884c09cd2527add"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
