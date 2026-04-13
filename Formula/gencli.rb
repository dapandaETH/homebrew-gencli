require "language/node"

class Gencli < Formula
  desc "Turn natural language into suggested shell commands"
  homepage "https://github.com/dapandaETH/cmdgen"
  url "https://github.com/dapandaETH/cmdgen.git", branch: "main"
  version "0.1.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "gencli"
  end

  test do
    assert_match /GenCLI|gencmd/, shell_output("#{bin}/gencli --version", 2)
  end
end