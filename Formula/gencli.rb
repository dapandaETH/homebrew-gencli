require "language/node"

class Gencli < Formula
  desc "Turn natural language into suggested shell commands"
  homepage "https://github.com/dapandaETH/cmdgen"
  url "https://github.com/dapandaETH/cmdgen.git", branch: "main"
  version "0.1.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install"
    system "npm", "run", "build"
    
    bin.install_symlink "dist/src/index.js" => "gencli"
  end

  test do
    system "#{bin}/gencli", "--version"
  end
end