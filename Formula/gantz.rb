class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.3/gantz-darwin-arm64"
      sha256 "54670a00ca3805c18306fd482a76398154d0a6e37663a67769e731369f831ca5"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.3/gantz-darwin-amd64"
      sha256 "9e1ebc8cda74317718de02de97df6258a47235087f78fac3e893134336782b4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.3/gantz-linux-arm64"
      sha256 "721359934ae7ed1986c07f89fd1c7302c9465ad726e44caff19a025e3d8d94b0"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.2.3/gantz-linux-amd64"
      sha256 "843982b28cf92c115b61e2b8397c9243f02ba5f31be31902758b4c29b8b02250"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
