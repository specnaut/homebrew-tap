class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.1/specnaut-macos-arm64"
      sha256 "841e342fc6ee7f9c602f857ee26136db3be4cf6fc3768e361d08f4ae0e8fd945"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.1/specnaut-macos-x64"
      sha256 "7f54db5559c3f81bdacb44b8bde70075636b945935849a7f0496cc8b242e51eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.1/specnaut-linux-arm64"
      sha256 "9f48fec64fc5774776e5434931511b78e4f0aff0bd782c8d9bfc3e16dbd95c81"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.1/specnaut-linux-x64"
      sha256 "f9e30dad100f6bdf5997aaea50b2438cc17d77109280426f1caa85f68894917c"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
