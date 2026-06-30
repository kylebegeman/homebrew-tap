class Dossier < Formula
  desc "Generate self-contained, agent-readable HTML dossiers"
  homepage "https://github.com/mrbagels/dossier"
  url "https://github.com/mrbagels/dossier/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "c4f4f686c31743b4c3ecf470762536a325acb2d9bede7406ef452bbe2419b949"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    output = shell_output("#{bin}/dossier --help")
    assert_match "dossier build", output
  end
end
