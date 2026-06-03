class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.3.0.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "bdc6cf9f1299d131694631c7d335a478f98d2d98509dcc9506f36ad5418a43c2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
