class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.0/specnaut-macos-arm64"
      sha256 "1fcfc0246f7c3d91219240c761fceff2288137447f58712579493c4a83df9bce"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.0/specnaut-macos-x64"
      sha256 "2846d57656aecd0b175b077aa102ba0ab14b7869959ea670b9caface2d46de2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.0/specnaut-linux-arm64"
      sha256 "84c6259ead2b16637c49d9aae170e6a343c0624a3babf5c6d341b5112d0cb9d6"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.0/specnaut-linux-x64"
      sha256 "e459da42c0ee7bdedf615f31c434db44f3a6777775dffa6c00199ab784faff9c"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
