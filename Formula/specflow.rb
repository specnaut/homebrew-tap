class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.14/specflow-macos-arm64"
      sha256 "874c2098d0bb1992f0e7a857cb41557d7b239ccd50ad1cde8010dbdcffa42e24"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.14/specflow-macos-x64"
      sha256 "e3eb4f8b4929fe50c324c470a29168d1ae98418e62863333995237d10042c5b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.14/specflow-linux-arm64"
      sha256 "325affda502887327e67346f29d6e80f3974e8012b2a9a95f1b93ef683c221be"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.14/specflow-linux-x64"
      sha256 "92416392e993d6329e38ec60afa85fd8e60fd8699901cf0adbcb20f83ac9d387"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
