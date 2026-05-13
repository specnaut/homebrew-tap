class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.6/specflow-macos-arm64"
      sha256 "41719d88316ed9d6d43e59c00dfcb0d70b903e01d2971ec60e97e3cee06fd886"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.6/specflow-macos-x64"
      sha256 "ef236cf41011b74299134074faa7d0aaea48487969596fdf511f576d2538914b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.6/specflow-linux-arm64"
      sha256 "a7a1d8e9147b942a63cb54bf4c20d0e88cb5d01cf127c562ef800a986718e70c"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.6/specflow-linux-x64"
      sha256 "ff5b98f08cae42556f2d592087543523fd9ecab57fd6065093d915ffc753d3e8"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
