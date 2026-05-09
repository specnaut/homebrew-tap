class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.8/specflow-macos-arm64"
      sha256 "380c69e3e9ee3e1744990deae5d14dea6549b13cea3bd11a1cf97b238c744229"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.8/specflow-macos-x64"
      sha256 "64cbfd77da46a50def9d31acf89de8bdd767ea48c6be94aa98a416d555a54b2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.8/specflow-linux-arm64"
      sha256 "f2636177e08696ec758a6887612732989e6572f55063cc07f69df9775c70a7b3"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.8/specflow-linux-x64"
      sha256 "aef35a1912abbe5d64e9864d2a86c794edf673e757ed457e53a0f3d14b07bd10"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
