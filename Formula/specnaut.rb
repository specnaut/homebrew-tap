class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "8.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.1/specnaut-macos-arm64"
      sha256 "b1a8c630c1b2424e3af2dd824a443cd4e31f5d9fedf83c3b6e5da852f699ce5e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.1/specnaut-macos-x64"
      sha256 "c389d4b51eb65551be12efc78a81023039a2b16772912c214a1e54cca8d64505"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.1/specnaut-linux-arm64"
      sha256 "aaa03e36aea531b6b807fbd724199f4936d876c4967c5e2f3f13e8527b5abb3c"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.1/specnaut-linux-x64"
      sha256 "70eee376367f2161e2279df4ba56c4913c2d99cbfb661115c1eec7624c84e5d6"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
