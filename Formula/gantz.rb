class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.1/gantz-darwin-arm64"
      sha256 "45f88bff999eb2c3f9b83e72a81c460e248456941340e9229f9bd6fa642bcbcd"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.1/gantz-darwin-amd64"
      sha256 "daa10aa3071172a125b8068759511e77ef671692d1147e487f3b9a63f52912db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.1/gantz-linux-arm64"
      sha256 "c5bbd99d7e2eef83e1f363bc5b21264a3682fa1b787364375c94df47cc15ddea"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.1/gantz-linux-amd64"
      sha256 "eb52960cb642c0b28b1fe2114d01937fdf38cdf1dc6a1dd8ed21c1ee18efde1b"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
