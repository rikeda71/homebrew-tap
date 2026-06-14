class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.3.1.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "9580b0bda818480653b935ad6d88b04023dc3a8e75c5b8229dee328e6839a365"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
