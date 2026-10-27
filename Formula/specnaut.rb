class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.3/specnaut-macos-arm64"
      sha256 "ef363c62f3740dccc4303ee2f9f579a008df95b9b4a0ae70b97da252278c5807"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.3/specnaut-macos-x64"
      sha256 "2d8cf5b46af7a5f1df5b68de12a9ebef3fac74cc9d03a4491b071ff0d06d30fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.3/specnaut-linux-arm64"
      sha256 "06a09373cf8585ac00a33a6d34773da553969614528f5f57fefb1cf47ea58d9a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.0.3/specnaut-linux-x64"
      sha256 "94c54552fb9465ec312c29ff7a2053c358e909b7aaf2a46d4c80c4c417033664"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
