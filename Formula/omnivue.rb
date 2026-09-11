class Omnivue < Formula
  desc "AI/LLM session manager for coding agents"
  homepage "https://github.com/stevencrawford/omnivue"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.3.0/omnivue_darwin_arm64.zip"
    sha256 "bb57cf5ad55b1304b02233f2f47e86ee99f8ba32b9b54b12680a3d265ff77e82"
  else
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.3.0/omnivue_darwin_amd64.zip"
    sha256 "7626e49eb0478ba3a6ad7554cde1723febfdea38161cfec5c39f53c81338b21b"
  end

  def install
    bin.install "omnivue"
  end

  test do
    system "#{bin}/omnivue", "--version"
  end
end
