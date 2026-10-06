class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.1.0/specnaut-macos-arm64"
      sha256 "b5ce42c6663046c34c68ea16afab16317eb285478b6fc9f12ef5aa6f119cf17c"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.1.0/specnaut-macos-x64"
      sha256 "ff46f54581dd029e1d1b0cb66482e1ea62e2fc5d03a1371082ab4627e0da886a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.1.0/specnaut-linux-arm64"
      sha256 "d0046c312a0fbf1eaf94af64803ee945ab307b2dec369103198dc5548f5549e1"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.1.0/specnaut-linux-x64"
      sha256 "8aa1088722197355332f8f0259898aa1d293eb9aa464c6c1839ba36b5da4aa83"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
