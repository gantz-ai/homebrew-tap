class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.0/gantz-darwin-arm64"
      sha256 "0718dbf13860adbfd19f69e7e52b8731daace7e54bd60fc20db637acdd5df486"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.0/gantz-darwin-amd64"
      sha256 "b684fea48597d8eac212a46ab09d98a042ccb8bd968b79a9a822e01d2824d4dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.0/gantz-linux-arm64"
      sha256 "73399ac241bedd955a2455497258861dd7de9889f5932ab6845a33d6f93a04ba"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.0/gantz-linux-amd64"
      sha256 "d28ebe2fa21723bd341adfa031309cbd48af74aa27c03dda3c3cc139e50bf853"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
