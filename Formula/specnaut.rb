class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "9.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.4.0/specnaut-macos-arm64"
      sha256 "6a4a35f86d8d1b6a2af3980bd37fff34a7455a7316a2e6bb2ee37cae085805ad"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.4.0/specnaut-macos-x64"
      sha256 "14b428182c803d1bbf5cc2a912a68f26b3f4c317d3d45e371ddeebd77858795f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.4.0/specnaut-linux-arm64"
      sha256 "99304d980cfdecc6ae8e69affa24d3e1d356d2b58aed13c9014abaa995e31e14"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.4.0/specnaut-linux-x64"
      sha256 "0de510446de9de9649cc0bf8d197ff4e6c4c32602bcbe21fbda7b4e20e697c23"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
