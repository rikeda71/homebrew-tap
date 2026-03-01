class GhosttyPaneSplitter < Formula
  desc "CLI tool to split panes on Ghostty Terminal"
  homepage "https://github.com/rikeda71/ghostty-pane-splitter"
  url "https://github.com/rikeda71/ghostty-pane-splitter/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "96ed4d3035c3d8be43848388920e6f2a4dab0454a70f92f0b788774fce9b60c5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ghostty-pane-splitter --help")
  end
end
