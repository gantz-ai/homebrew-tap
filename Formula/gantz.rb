class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.0/gantz-darwin-arm64"
      sha256 "c967d155501af9f578772ceac3096505dd09f3c26494353f974fa42512435684"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.0/gantz-darwin-amd64"
      sha256 "f907b0234d8d80d9735cbfe6782fbc8436311cfae475a422f761caa2d2378a32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.0/gantz-linux-arm64"
      sha256 "fd167e236b15fb3d21af27a4e40a640ab0682b16cd0bc245b0502ca315f2867f"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.0/gantz-linux-amd64"
      sha256 "ca1114ae5236a1abfdceafd1a5e2047094d1b25449a585209743fd3cdbac182b"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
