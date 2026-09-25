class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.4.0/specnaut-macos-arm64"
      sha256 "1c80284ac1c15e2d8c8566972c51298c7b6a9e0726ee2ef25bbd41b529c06380"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.4.0/specnaut-macos-x64"
      sha256 "d0c9c340ee24209720bb56040a6d0500764233c77a4b699ab31461dbb79c3b8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.4.0/specnaut-linux-arm64"
      sha256 "648c9ffd2457d1c55f03554d8c1cd5d8a31f75a56019e223fbde1ce3414a5845"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.4.0/specnaut-linux-x64"
      sha256 "6dd740336bb557eebf3ba165c2d4e22b43c2b31b9514762348792f15dbc30dbe"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
