class Omnivue < Formula
  desc "AI/LLM session manager for coding agents"
  homepage "https://github.com/stevencrawford/omnivue"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.3.1/omnivue_darwin_arm64.zip"
    sha256 "0e5cd550db5004580169ebba60075036af092229f7a03c3d1c4e12eb97129e24"
  else
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.3.1/omnivue_darwin_amd64.zip"
    sha256 "b3d50c3fb2d66eb12b017b0576adda060185426eb95515d8ec1ce305f4e424de"
  end

  def install
    bin.install "omnivue"
  end

  test do
    system "#{bin}/omnivue", "--version"
  end
end
