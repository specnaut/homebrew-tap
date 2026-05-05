class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.9.2/specflow-macos-arm64"
      sha256 "a106d04700c895bb4d8a592776dd037bbcad48c6aaae1e9b6813673dd2661563"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.9.2/specflow-macos-x64"
      sha256 "8259ea85476e14b33d84f4f4cd8ca778c608539c3e612a869e07b2bf83dbc02f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.9.2/specflow-linux-arm64"
      sha256 "ceb533354e4b35b9498a63fed40577695fd15168edf602d64cef1b7ee221676c"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.9.2/specflow-linux-x64"
      sha256 "29f4c63a8f0fe21186702c7f8e27ee03800077e470d3d45da6fcaef7467848cf"
    end
  end

  def install
    # The downloaded artefact is the bare binary (no archive). Brew renames
    # the cached file to match the URL basename — install it as `specflow`.
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
