class AgentSweeper < Formula
  desc "Clean stale AI-coding-agent session stores interactively"
  homepage "https://github.com/stevencrawford/agent-sweeper"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/agent-sweeper/releases/download/v0.1.0/agent-sweeper_darwin_arm64.zip"
    sha256 "d9e1cbb783074b7d33eae59224450bd53435f6cdc9d686d2c1e610a8ecbd93e9"
  else
    url "https://github.com/stevencrawford/agent-sweeper/releases/download/v0.1.0/agent-sweeper_darwin_amd64.zip"
    sha256 "deb8aa5741450706ec01d2157aa6d2edee8339200a6d3fbb77803393b553ab77"
  end

  def install
    bin.install "agent-sweeper"
  end

  test do
    system "#{bin}/agent-sweeper", "--version"
  end
end
