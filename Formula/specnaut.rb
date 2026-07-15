class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.1/specnaut-macos-arm64"
      sha256 "6ff1e680e9c7f152cebbbb7d52ebc98ca5b07a302b3f5207a5ac75ca66085d96"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.1/specnaut-macos-x64"
      sha256 "b7d58f2ce7616ed992cdb34dd7e21623bfda725b2b0f67f07de67661a5970a3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.1/specnaut-linux-arm64"
      sha256 "6f7d4da4a676d21773c38fd4d2f89ee91be02480811b459e46b9e7f8bc55021b"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.1/specnaut-linux-x64"
      sha256 "173a0a039bd8bae3c85aab0d953f8065dcee3d214ae642e9364a88c8f91a95c2"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
