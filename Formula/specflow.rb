class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.8.0/specflow-macos-arm64"
      sha256 "a2002096c703c1cecddcd96b71b6956031bab68fc6c9f67cc0e00d4a9a23c6cc"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.8.0/specflow-macos-x64"
      sha256 "5145d35e1ebaa87d486667c8526a291738d7ba46576c082009fc33f672258174"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.8.0/specflow-linux-arm64"
      sha256 "8e083061c1b88e392f1cfe6273ff792f51e32edd796e105fbfc287cd42a8c106"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.8.0/specflow-linux-x64"
      sha256 "d7a7cc4345045b082cd0db94d7e3f8b0c96d4727a372a2c8681842187231cbc2"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
