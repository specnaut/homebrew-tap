class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.6.0/specnaut-macos-arm64"
      sha256 "8311aa43dee03e9e64504922b1875f189ecea3b5f80f310b1a858cd1df261c04"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.6.0/specnaut-macos-x64"
      sha256 "b8084e7493a1db0b8f19d2cba43c12805cc912d57c4047ec612c58d529ccbd28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.6.0/specnaut-linux-arm64"
      sha256 "bd6f68cd7c9f56d55b19ce419230ac4abfa3ca7e2502aaffbe7f787da4dc93b6"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.6.0/specnaut-linux-x64"
      sha256 "c0567d81246c366b70f59ccb558548cc3f63955b649e36906726e447a2cc211b"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
