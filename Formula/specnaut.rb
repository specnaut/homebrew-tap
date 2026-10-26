class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.0/specnaut-macos-arm64"
      sha256 "1069a185d4214315458d337ffaedbdcd145a89c1d51762f2dbf0f50fdf3d6bcc"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.0/specnaut-macos-x64"
      sha256 "86b627a01ec4477c03afc5343a54382cd110b45e171af5a05cbd7a5810f4bf81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.0/specnaut-linux-arm64"
      sha256 "07d5378b37a87ed6499f33b403ef6cd0c9a25f1edfef4d3ffc9775b3ac51c318"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.0/specnaut-linux-x64"
      sha256 "95021558e70907c34c119fc655ad065425606b1bacb2006d2a8cf904cf75d1b5"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
