class Pops < Formula
  desc "Prompt-Ops CLI tool for intuitive infrastructure management"
  homepage "https://github.com/prompt-ops/pops"
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-darwin-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    if Hardware::CPU.arm?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-darwin-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-linux-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    if Hardware::CPU.arm?
      url "https://github.com/prompt-ops/pops/releases/download/v0.0.2/pops-linux-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "pops"
  end

  test do
    system "#{bin}/pops", "version"
  end
end
