class Omnivue < Formula
  desc "AI/LLM session manager for coding agents"
  homepage "https://github.com/stevencrawford/omnivue"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.0/omnivue_darwin_arm64.zip"
    sha256 "332cd579947681d89a527a1bc5a10dd9067930900075df7d3b73655845bb9591"
  else
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.0/omnivue_darwin_amd64.zip"
    sha256 "71b6b129f5a7e596550fa9dba62c2526d1acff9e02d3e11de4283ae30c9d741b"
  end

  def install
    bin.install "omnivue"
  end

  test do
    system "#{bin}/omnivue", "--version"
  end
end
