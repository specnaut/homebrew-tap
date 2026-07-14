class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.2/specnaut-macos-arm64"
      sha256 "db175c0cf27ef40ea97c6d723d27fe81059c7a0960015dbd77d349b2ea50bb83"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.2/specnaut-macos-x64"
      sha256 "e9c25b041fd1b4336040e91d8c9f809fa1fe4e47cc65053faa634870a7f897e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.2/specnaut-linux-arm64"
      sha256 "2d9520e7da00e5eb918d82d016270281754d483a287512fd750b59e8822ad576"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.17.2/specnaut-linux-x64"
      sha256 "7edaa8bdee207c42b87c2ddf439bf9d45a7370119245c9ca175f6ef41a6a15d0"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
