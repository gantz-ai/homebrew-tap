class Gantz < Formula
  desc "Gantz Run - Local MCP tunnel for AI agents"
  homepage "https://gantz.run"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.3/gantz-darwin-arm64"
      sha256 "42cbfcff373be5edcd0cc9b1d4229254e5617d5751f6f00375599fd460e273eb"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.3/gantz-darwin-amd64"
      sha256 "2b7bfc9756faedfebe0abd2b7ba9d14d9454a1ace47622a2e066d171716fed82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.3/gantz-linux-arm64"
      sha256 "175a328b44c888c1a5cb827fca5524519f29868281fb637c2eee9d49dd24b707"
    end
    on_intel do
      url "https://github.com/gantz-ai/gantz-cli/releases/download/v0.3.3/gantz-linux-amd64"
      sha256 "2d9c49c9517c174da5edcb64a3383f68882b102071c451ba02b8c89e808e4823"
    end
  end

  def install
    bin.install Dir["*"].first => "gantz"
  end

  test do
    assert_match "gantz version", shell_output("#{bin}/gantz version")
  end
end
