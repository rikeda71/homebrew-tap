class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.2.0.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "9d618375a87ff9a15175c2f006b0c318c7b98c54c5937d8f614511d78faea276"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
