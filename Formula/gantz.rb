class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-arm64"
      sha256 "e4c3d80028aef41fc790b326feedf003f159016cf7c37113201605b8ac7ae103"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-amd64"
      sha256 "4aa63aba1ebfbe4bff77d436571658861e5e2679c4fefb42f692cbd92a3bba1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-arm64"
      sha256 "0fa9bd8f28cabb7c0857979bb5ab111e367f2adf26da4a92b1cc10cad89dfaa0"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-amd64"
      sha256 "6643040dd9934dff566897c28cdfb473bd97071d252d3f8e4360e85e33140474"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
