class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.4/gantz-darwin-arm64"
      sha256 "ef81b8e847b41d641d9ccfe01af375a739205af25b406595ca6ef6fafc55b6bc"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.4/gantz-darwin-amd64"
      sha256 "4b1a3a11cc6b55b009f0d46db0b0e15873d762aec9d98087239a76cb1bcceb10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.4/gantz-linux-arm64"
      sha256 "a9c7426b7877cba85364462d224868dffe19b36b2af81f9748eb4c1ca3b6f895"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.1.4/gantz-linux-amd64"
      sha256 "a6eb236ff0fe0ccbbaba66544566cb5e30e594570eb787f9657b64423dd4b6c6"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
