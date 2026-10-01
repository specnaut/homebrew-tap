class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.0/specnaut-macos-arm64"
      sha256 "5f24e2f4d640a53271f1464c8aff6f72966d6d207fc7931ad5b5af0de4fcb0cf"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.0/specnaut-macos-x64"
      sha256 "0c97222e699f0a3da542225f1df4b5f726e2b247c3a9bab13f75f659e3c6f760"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.0/specnaut-linux-arm64"
      sha256 "21bf3535ecb2d8ac36a97d06c392a835e859197b4b1b793a24907d591742f1e3"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.0.0/specnaut-linux-x64"
      sha256 "0039c099c3fe49957f5eb49d5815c584ad7a458faa6c5d7d5ccec631451105cc"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
