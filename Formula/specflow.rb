class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.4.0/specflow-macos-arm64"
      sha256 "822ed568de4d4bc49fc5e8a160ddb8ea6d5b26c39ca7573d4739a2420a31fa7d"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.4.0/specflow-macos-x64"
      sha256 "43158ea35512519f47753d331aefcb795fc59ff47760cfde0a4ccbcc27ab5066"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.4.0/specflow-linux-arm64"
      sha256 "4b3d82e5f977f8e9f714e27f7ef7be4a4a7886b32589ce1383f4a3b1f51a774a"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.4.0/specflow-linux-x64"
      sha256 "6ac127e0cb72f7e640f08a9d2276096ede29ca91a79eedd4a306a2f93316184f"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
