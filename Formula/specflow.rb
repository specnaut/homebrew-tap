class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.1/specflow-macos-arm64"
      sha256 "8f90ef274c80789b0728e9e771ad9b80f9241ba68968ec3a6a1b7666eb8b3d72"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.1/specflow-macos-x64"
      sha256 "33f1af06c13ce0b5206f0ebaab6fa0896d3c1c75649e45ff344030adf5305121"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.1/specflow-linux-arm64"
      sha256 "040e7899bd7a66793fb0d93d9658c0c9539dfde3d1383ed502bbaf92da04d6e7"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.1/specflow-linux-x64"
      sha256 "a6e82be06a108ff8ebdb47233a65a0eb3f753657aea9e227c8a93e8ab77d2689"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
