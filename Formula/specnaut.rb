class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.2.0/specnaut-macos-arm64"
      sha256 "4ee67175b8eb755b7a8e13fe1484bfa2e9730114b2b3e30d26f8080931ec5294"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.2.0/specnaut-macos-x64"
      sha256 "b118f960470df247efe37adf36a0692a9a73890eb1790a003273d1eb648be5fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.2.0/specnaut-linux-arm64"
      sha256 "d77808a768a66faf39290e03a03a8e1b717bcc96b9e7ecfd1b0f3fe1a1a9c39a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.2.0/specnaut-linux-x64"
      sha256 "f0f6a193a5c57cf0d289f15378424edd6e2c42e5cd1dff4585a2706cf03c6cbb"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
