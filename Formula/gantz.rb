class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.4.0/gantz-darwin-arm64"
      sha256 "228bc2f60b4880e25fbf57b2984c63155d8f940d9cd5c4cd12ee55be8daedac0"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.4.0/gantz-darwin-amd64"
      sha256 "09030c99452a746b0da7f0a8de0691f39f6bd1114e5960a3adb45e5dcb3ca324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.4.0/gantz-linux-arm64"
      sha256 "b4f2de63678ef6c33b125e283eeec5e5ee0d8bb34bf6d10b458cb3bbf7a104a6"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.4.0/gantz-linux-amd64"
      sha256 "7f8ab9b4673813db798c74148bfd959b0b59352288ce83f72d96992a051bce0a"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
