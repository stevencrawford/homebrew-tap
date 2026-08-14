class Omnivue < Formula
  desc "AI/LLM session manager for coding agents"
  homepage "https://github.com/stevencrawford/omnivue"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.3/omnivue_darwin_arm64.zip"
    sha256 "d1335298b6cf9a82c1020c788b59ad26a40a080e9513d9b5e2e02b18da9d2087"
  else
    url "https://github.com/stevencrawford/omnivue/releases/download/v0.2.3/omnivue_darwin_amd64.zip"
    sha256 "7d4a57995812c19b1be5da7be2483e95b74fe90eb659e33d43deb6a2c670ceae"
  end

  def install
    bin.install "omnivue"
  end

  test do
    system "#{bin}/omnivue", "--version"
  end
end
