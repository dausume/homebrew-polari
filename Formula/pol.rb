class Pol < Formula
  desc "Polari suite CLI (pol)"
  homepage "https://polari-systems.org"
  url "https://github.com/dausume/polari-suite/archive/refs/tags/polari-v2026.09.27.tar.gz"
  sha256 "d1bff9ef0d4c82177c108693e312e72e0f8365dc85d61fab66d7d1b32a89dd2b"
  license "GPL-3.0-or-later"
  depends_on "node"
  def install
    libexec.install Dir["polari-cli/*"]
    bin.install_symlink libexec/"index.js" => "pol"
  end
end
