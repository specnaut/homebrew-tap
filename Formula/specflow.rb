class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.19/specflow-macos-arm64"
      sha256 "6db5321dd826e225d99819c9909e63e664535fbb73a7444195f4e4c24c989c81"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.19/specflow-macos-x64"
      sha256 "da83c029fd2b08f2e907989e4d88c57d7aa644c5b0de562e6422472da085d5a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.19/specflow-linux-arm64"
      sha256 "5f2c1db278e3f03cdbdcc6cdab77a5fd467b756453aa96f53cafb1df1171b649"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.19/specflow-linux-x64"
      sha256 "d6a22dd1627584b0a03d227fa4403b507710444f7d7fd5540873df3d1d3826e5"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
