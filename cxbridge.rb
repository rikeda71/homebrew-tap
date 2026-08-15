class Cxbridge < Formula
  desc "Bidirectional config converter between Claude Code and OpenAI Codex CLI"
  homepage "https://github.com/rikeda71/cxbridge"
  url "https://github.com/rikeda71/cxbridge/archive/refs/tags/v0.3.4.tar.gz"
  # sha256 is updated automatically by .github/workflows/update-formula.yml on release
  sha256 "0cbd5c3ed8e68d6f13bf2d42a130ef2d7afc820d456a329075d0067b4122017a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "cxbridge", shell_output("#{bin}/cxbridge --help")
  end
end
