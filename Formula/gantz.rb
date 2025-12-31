class Gantz < Formula
  desc "Turn local scripts and APIs into MCP tools for AI agents"
  homepage "https://gantz.run"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-arm64"
      sha256 "315a96a6b76bc2f9c39e078459a74df62680fcb80aacc109649cf83e40b02500"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-amd64"
      sha256 "6399e56ec12670760873c091f4a4a93586e3a70a40cded1c02e7f4bcec9e7092"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-arm64"
      sha256 "5d767a5c5779d3346acb1a574233df3826bb3e1fa889f771338c689d1de5e5f5"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-amd64"
      sha256 "3fedcef59953752bd42a3455d30a8f4985b3e05d350ab7a19b982f1d64977479"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
