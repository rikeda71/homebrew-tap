class GhosttyPaneSplitter < Formula
  desc "CLI tool to split panes on Ghostty Terminal"
  homepage "https://github.com/rikeda71/ghostty-pane-splitter"
  url "https://github.com/rikeda71/ghostty-pane-splitter/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "97ed29669d748afa303603c6a97d2c587b8099e6db3930822ea9c60f7230df92"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ghostty-pane-splitter --help")
  end
end
