class Omnivue < Formula
  desc "AI/LLM session manager for coding agents"
  homepage "https://github.com/stevencrawford/omnivue"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.4/omnivue_darwin_arm64.zip"
    sha256 "f4b779a4f925b3fff94cc1d533edfb9365886ea42676c47107926ac8067812c7"
  else
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.4/omnivue_darwin_amd64.zip"
    sha256 "1f283d48e52ee2c4920047eb4317e865e3ccc887f04d0400233a2482a1de8fa8"
  end

  def install
    bin.install "omnivue"
  end

  test do
    system "#{bin}/omnivue", "--version"
  end
end
