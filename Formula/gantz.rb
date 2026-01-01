class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.2/gantz-darwin-arm64"
      sha256 "ca0208d07a4ae82c694626e592cb8ff4698a914ce85ac49a2d08aa322fd29b43"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.2/gantz-darwin-amd64"
      sha256 "98010cbe86a286ea1f022b0375514ab0030625d6bb2515a95b94f2e35cca2ed1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.2/gantz-linux-arm64"
      sha256 "b7d57f79c9b3808ce489bba60f94c61b026124616421fbbf976e8f32a8598e7b"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.2/gantz-linux-amd64"
      sha256 "ca3c83bcd49167731f132e979c836724dfbfe889f02f944d190207199d538850"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
