class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.1/specnaut-macos-arm64"
      sha256 "3cc1667d5e30abe11944301fdd2c0b064af497a748f66b40b55e73db542f6eb3"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.1/specnaut-macos-x64"
      sha256 "c2fbc331b82c9b64b3bebdd0d8452028e8bfd5025f82a08af260effa6262200c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.1/specnaut-linux-arm64"
      sha256 "f3e244b6bb4a239b5dc0ad542c999245f9413224ec49ad35fa2b2da7038a22f3"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.15.1/specnaut-linux-x64"
      sha256 "9ada026cd6d079642355b7b5a1453e4d53fccde0b9a9f287a97c9ed010e0883b"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
