class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.2/specnaut-macos-arm64"
      sha256 "19385089e49b6d8bce2cf61008096e1ed7b103e2cc1a1bc775b7efaacf7ff82a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.2/specnaut-macos-x64"
      sha256 "c33a8eb41f5ab55852b38beda26e662c48fe34b54b3352d1663906b9f844c7fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.2/specnaut-linux-arm64"
      sha256 "e5b97d43bd5d0598cb4021f8da4b6dce966fb11d83cd6aaffa8fec70a31cb532"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.2/specnaut-linux-x64"
      sha256 "bef0466465751f8860eb30aebf5fb4ed1827426ce8a367b7753cb21f9c5746e5"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
