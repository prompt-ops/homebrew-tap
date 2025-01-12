class Pops < Formula
  desc "Prompt-Ops CLI tool for intuitive infrastructure management"
  homepage "https://github.com/prompt-ops/pops"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.1/pops-darwin-amd64"
      sha256 "8fa9fbd131b9421ca4c32f8e62b4a3a761ac946a87aa1ad25b8a61519fe74d12"
    end

    if Hardware::CPU.arm?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.1/pops-darwin-arm64"
      sha256 "3aa41329acb30d16328551253899f908a17249d37fba7ccfc1fa9084544cd305"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.1/pops-linux-amd64"
      sha256 "3e42b3b4e85c2b6e392f375facab4e8cca6b4b4ee2ef664a7033ca6b7376a910"
    end

    if Hardware::CPU.arm?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.1/pops-linux-arm64"
      sha256 "8bf14ca00af1b01fd70438a1a95e170d82abfac98b4495da58c69966c006cf0b"
    end
  end

  def install
    bin.install "pops"
  end

  test do
    system "#{bin}/pops", "version"
  end
end
