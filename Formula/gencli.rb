class Gencli < Formula
  desc "Turn natural language into suggested shell commands"
  homepage "https://github.com/dapandaETH/cmdgen"
  version "0.1.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "https://github.com/dapandaETH/cmdgen/archive/refs/tags/v0.1.0.tar.gz"
  end

  test do
    system "gencli", "--help"
  end
end