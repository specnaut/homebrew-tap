class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.0/specflow-macos-arm64"
      sha256 "92b6a269851fe5c2347b67c563660b321121bff107f979fd01745af8d4b46500"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.0/specflow-macos-x64"
      sha256 "8a93cedcfc85887d202d6ff0c0abaec55dd99beb7311855a126eeed2ef8e9c2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.0/specflow-linux-arm64"
      sha256 "01012265e1130f89f274362e7b9b1ab0a4be4488896d2ecdf8734cf937de6466"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.0/specflow-linux-x64"
      sha256 "248281212c312c4f4587ad1fddf18c59d6727b30e3c9b88c1c13497bb1649fb6"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
