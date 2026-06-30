class Dossier < Formula
  desc "Generate self-contained, agent-readable HTML dossiers"
  homepage "https://github.com/kylebegeman/dossier"
  url "https://github.com/kylebegeman/dossier/archive/refs/tags/v0.6.6.tar.gz"
  sha256 "6da1f6a95ca969e7400147980c280a64c71674ac3a9fb518ffce92ca77dd22b7"
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
