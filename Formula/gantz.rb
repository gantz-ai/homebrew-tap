class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.1/gantz-darwin-arm64"
      sha256 "8c3b486b297d485684b82a5e5e846241fbb367335847a7b8df899c06b1e01eef"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.1/gantz-darwin-amd64"
      sha256 "f8e1849096647374a76f62b06ebbe371c9de92a101f945075326f4db9a3b6126"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.1/gantz-linux-arm64"
      sha256 "550a7f62587adac37531b6f9f08f6682b117ee49a967850ee981145e9d27d3e1"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.1/gantz-linux-amd64"
      sha256 "3e642f601b272e93ef2e9e0071cc8e52f7206980a57715113f5bcde17fc23f83"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
