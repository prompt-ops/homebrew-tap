class Pops < Formula
  desc "Prompt-Ops CLI tool for intuitive infrastructure management"
  homepage "https://github.com/prompt-ops/pops"
  version "v0.0.2"
  platform "default-platform"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-darwin-amd64"
      sha256 "0a582116dea1b6206b80f80f23bcd6fa012f7231d2d9ddf64597309d2f68583c"
      platform "darwin-amd64"
    end

    if Hardware::CPU.arm?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-darwin-arm64"
      sha256 "c3de584233f6039f0d3a58b1bbfdddd3b6e2a0b4dea819d305d0740a5dd000ee"
      platform "darwin-arm64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-linux-amd64"
      sha256 "2f0e8b84ed86b53e810d2eeb12b9fa9597393ef47c0710d6e14ab38c8b46fa36"
      platform "linux-amd64"
    end

    if Hardware::CPU.arm?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-linux-arm64"
      sha256 "e9fca48108bb912b1645cf288ca47c3ce4ea9129cd093a47a5ea22b34ce0ecef"
      platform "linux-arm64"
    end
  end

  def install
    bin.install "pops-#{platform}" => "pops"
  end

  test do
    system "#{bin}/pops", "version"
  end
end
