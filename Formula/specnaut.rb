class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.0/specnaut-macos-arm64"
      sha256 "2091bd7532ef350a5fcf51ee4a71a141117bb9e9c2b11c42a54ea007c27832b6"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.0/specnaut-macos-x64"
      sha256 "fb4f8e090e3859e05b822919e8804b8a3e6fb426a936c9064e5769fc956f784b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.0/specnaut-linux-arm64"
      sha256 "281f17a4234416df31b723f0b1c1818ecb3a5e211669fb3c64919c2137c739bd"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.0/specnaut-linux-x64"
      sha256 "5564fc0613fb4cf72a64b17af43751c9a32c9dc91fe47a240bb54314bd6abe0b"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
