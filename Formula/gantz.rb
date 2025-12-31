class Gantz < Formula
  desc "Turn local scripts and APIs into MCP tools for AI agents"
  homepage "https://gantz.run"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-arm64"
      sha256 "bbe21efa7eb29b962a7524bae0164c816abe8536d42e14ab50b458b35100f2eb"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-amd64"
      sha256 "221370eab1940f2aec3d6ef41670d06d90316e478b6a9b36cf37ff67e7549551"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-arm64"
      sha256 "9b8800dcd3de147a77ccea1be8e6ba7e46029e3f09a6ef458f1e73a9c13ca5cb"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-amd64"
      sha256 "11e64670047e718534654c8843d1d05c0766ee5e9956be62c519cd8dedb06daf"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
