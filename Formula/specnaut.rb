class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.3.0/specnaut-macos-arm64"
      sha256 "145a19f8a8dd467cbb9add329977e52d098e8bc9d7bc0796d605e73f9a7bb6b0"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.3.0/specnaut-macos-x64"
      sha256 "abfc171ab76efbf28f6cbab85bec55450e60bebe8590f1aa6d0d5979f1d1e2c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.3.0/specnaut-linux-arm64"
      sha256 "7bced1d8c6d34691d8e9ce9f88f6c4d6ea4d9a99acf929207c1e1bcbb1f7c574"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.3.0/specnaut-linux-x64"
      sha256 "d050595dce05512e7851ca474256aa000aa9da2b5d1bee22486fceb7b92bc130"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
