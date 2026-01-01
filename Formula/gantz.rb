class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.2/gantz-darwin-arm64"
      sha256 "306dd32a5a491f42ca1a80171ad52249609fb4b02441a0508df0e37adb941315"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.2/gantz-darwin-amd64"
      sha256 "be2dc7d5eb3aaf14f8e14fd19ce255294e999d98d797b0a1ff42c562e0a46d2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.2/gantz-linux-arm64"
      sha256 "4770fb43ea55c69fbab3512bb9c9192ed2ed1717589de2ccde1933a7ea740ff9"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.2/gantz-linux-amd64"
      sha256 "f64c723c37ee08791038dc1522e3c7758612fde1a2a648b192b29aa4c4587795"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
