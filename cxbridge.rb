class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.3.2.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "8a6359c6539fa48f9e49229f5c9d7f0867b4468750e293f61ff8bdd9212145a6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
