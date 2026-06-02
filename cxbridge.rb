class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.1.2.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "89d8ceba2162e97e8879cd89e343d965c1792b4ad0d4b0bfd48b72d2de3f1668"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
