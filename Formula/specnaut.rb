class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "6.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v6.0.0/specnaut-macos-arm64"
      sha256 "388d4b74c83904ec72b03fac31e31b1fb04fd25a2790babb2ba401e48845f313"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v6.0.0/specnaut-macos-x64"
      sha256 "269679177f7c23a4c9491087bdae5fe9ae421fa304d9461a455cf40b4d84bc9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v6.0.0/specnaut-linux-arm64"
      sha256 "7550642f07e829553a2271590088b8f7e5fcb7fba23b5bd7cdaf67e92e574356"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v6.0.0/specnaut-linux-x64"
      sha256 "9a7c86bb61f3a0d990ee2d70cbfc9f88e0e12207475e29d14628eadf77d66e20"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
