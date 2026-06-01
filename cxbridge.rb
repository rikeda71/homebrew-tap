class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.1.1.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "eee84ea3dadb2f4b134e7eacd4338a9b7e59ac8b44e140eab8f055899bdfa5eb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
