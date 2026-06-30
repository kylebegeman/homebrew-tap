class Dossier < Formula
  desc "Generate self-contained, agent-readable HTML dossiers"
  homepage "https://github.com/kylebegeman/dossier"
  url "https://github.com/kylebegeman/dossier/archive/refs/tags/v0.6.4.tar.gz"
  sha256 "df2b12b0ed0a9325d8cc9149a7b2b8201662cece298a418bfdcac69b36920bae"
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
