class Axmcp < Formula
  desc "MCP server exposing macOS Accessibility API to LLMs"
  homepage "https://github.com/adamrdrew/axmcp"
  url "https://github.com/adamrdrew/axmcp/releases/download/v0.1.0/axmcp-v0.1.0-universal.tar.gz"
  sha256 "d82725fdaf29900e9f5afebde190d4ef56ae4d75be5eaa1c2a49d5d7e0269a3e"
  license "GPL-3.0"

  depends_on :macos
  depends_on macos: :ventura

  def install
    bin.install "axmcp"
  end

  test do
    assert_predicate bin/"axmcp", :executable?
  end
end
