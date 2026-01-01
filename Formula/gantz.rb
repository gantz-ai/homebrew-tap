class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.4/gantz-darwin-arm64"
      sha256 "ac8bdfa50be874f8e976293debe7b14d27e7fbc190403d14a771a0e5dfa605a6"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.4/gantz-darwin-amd64"
      sha256 "445ea1083fd341dfc008c3467b5f96063f4b499cfd4601799c8d4fe2845bf5c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.4/gantz-linux-arm64"
      sha256 "20bd9f814e2994c3b97639c5e70498e0c8611c2ff00a626ddcaab633e0ad3ea3"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.4/gantz-linux-amd64"
      sha256 "3fc50ab3bddf740d73809fdadfb7122a810b349eadd697e60e7454a407fb82ab"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
