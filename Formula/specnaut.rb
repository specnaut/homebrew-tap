class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.0/specnaut-macos-arm64"
      sha256 "e658ce6db6e13368b66d4f1435941b449f28ae1c2ddc3e41df589d0651b38c58"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.0/specnaut-macos-x64"
      sha256 "de1f5ce40a29155f3f0dda4c26976b1fc8d95bf82acab2ab650ff632502ca8b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.0/specnaut-linux-arm64"
      sha256 "71c452e0957ee55d3147698de385aa338082bbb97b7b252fefda4002e455727c"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.18.0/specnaut-linux-x64"
      sha256 "2f5b5e153cc89898ba591ebbd99698a49bedf3615c05333df63e3669ba161186"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
