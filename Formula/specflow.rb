class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.10/specflow-macos-arm64"
      sha256 "d8e418c28fe3cc207ce7a0bcd57ba0c5e06af884edf45977250fc3990f064338"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.10/specflow-macos-x64"
      sha256 "a687f166f67d492119b5fd321691757d4d87cb1fe57092bb8593aa1fa318b76b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.10/specflow-linux-arm64"
      sha256 "5d4efad37ff522ee910cb9504438095b0c38d718a3fbcda87c12f6e89cbc1429"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.10/specflow-linux-x64"
      sha256 "8ad4ccea5329c9c97506170daaac03717604253a135622daebb716a4b04dbcc1"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
