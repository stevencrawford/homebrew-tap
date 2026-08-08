class Omnivue < Formula
  desc "AI/LLM session manager for coding agents"
  homepage "https://github.com/stevencrawford/omnivue"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.1/omnivue_darwin_arm64.zip"
    sha256 "c65115c0e7c59bd88892b098bfb662adaa733427cfe9507a1f418991a3d1a0fc"
  else
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.1/omnivue_darwin_amd64.zip"
    sha256 "3b4bf0e9c2a114f55f1d9d7741e925ef71ddb01927d4a597a2efc74ad178b0f5"
  end

  def install
    bin.install "omnivue"
  end

  test do
    system "#{bin}/omnivue", "--version"
  end
end
