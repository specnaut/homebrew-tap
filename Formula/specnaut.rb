class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.2/specnaut-macos-arm64"
      sha256 "9ea55fca74273caa67786b302c46e995c681e843b6c20d31d1a0e0a702e54050"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.2/specnaut-macos-x64"
      sha256 "e2bd6a36a90905428a8d7178af3ab05ee80078b4a26b143384080c968ad121d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.2/specnaut-linux-arm64"
      sha256 "5fc4b226333621f3807d8b76a79bf181f3439934dcfc206ee852d82d85546859"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.2/specnaut-linux-x64"
      sha256 "f8090b8ca085f10ca01d26687e1c4f89a30117f146e1fa47367475110e78572d"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
