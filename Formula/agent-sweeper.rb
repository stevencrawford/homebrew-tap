class AgentSweeper < Formula
  desc "Clean stale AI-coding-agent session stores interactively"
  homepage "https://github.com/stevencrawford/agent-sweeper"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/stevencrawford/agent-sweeper/releases/download/v0.2.0/agent-sweeper_darwin_arm64.zip"
    sha256 "2da889c0c81e5cd4da098802c2590e6ea2bec61356a9bab74bf38c095d310f91"
  else
    url "https://github.com/stevencrawford/agent-sweeper/releases/download/v0.2.0/agent-sweeper_darwin_amd64.zip"
    sha256 "3089cb94b8d6c3677b9a91f87cd4fe45b7fd67c5a63f78dd52cd9ad78229ae82"
  end

  def install
    bin.install "agent-sweeper"
  end

  test do
    system "#{bin}/agent-sweeper", "--version"
  end
end
