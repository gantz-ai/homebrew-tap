class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.3/gantz-darwin-arm64"
      sha256 "939e644fc99d6583961c894d2235e0d7101d00230c67b6b1837abac90f7dd53b"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.3/gantz-darwin-amd64"
      sha256 "a8cfcf6fcf06698f2f4e389ca88979f472a78a14fa76aa17a9c806df6858873c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.3/gantz-linux-arm64"
      sha256 "15f96a8713bc92fa4d477312000c41802ace9d02764fb1ddaabf7137bd4093ae"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.3/gantz-linux-amd64"
      sha256 "51dd10f1461253a887af517e41ba78e97cc3b002c26ea78e295db3ed3e7b33ec"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
