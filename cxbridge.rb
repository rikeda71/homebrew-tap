class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.3.3.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "463adf009acccf52d84eeb106477af0d161a93e0ab0bd6f6f270299aa7f2c98d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
