class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.4/specflow-macos-arm64"
      sha256 "eac30f5e7b31f4b613ec6470095e521f6e00cffeaea7850ad11966ae9d0bdc49"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.4/specflow-macos-x64"
      sha256 "4ae234ca8103259739f1ac7c4f6ff7be85559e1cf7f65ea03bc7869e068d4014"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.4/specflow-linux-arm64"
      sha256 "227c95f44d1f62ad99e0e62ee7b8eec1089f64f69894992cf1706774a31ec8cc"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.4/specflow-linux-x64"
      sha256 "a8ef2db9a9cf98684716dec3715512437a68a9ab4f38c03d1a5ce918c4305600"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
