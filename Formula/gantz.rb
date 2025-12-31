class Gantz < Formula
  desc "Turn local scripts and APIs into MCP tools for AI agents"
  homepage "https://gantz.run"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-arm64"
      sha256 "4a4d3cdb768d2a67cd102c56eb4c7d45b465d43595333beb489a820499fa698e"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-darwin-amd64"
      sha256 "1f1161bf6c7878ffc9d87d76ce3b19d0f9fe41a866abc7879f1712cfcdc67f32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-arm64"
      sha256 "ef2af5f41ca30f58e7235d33aab4c3e35c2827dd1404bef32b45484483cb75a7"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v#{version}/gantz-linux-amd64"
      sha256 "ba27403689f16c36ab63f0070d2142a050c85e03e6cf79e60cb115866a125c0f"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
