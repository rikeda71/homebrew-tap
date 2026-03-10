class GhosttyPaneSplitter < Formula
  desc "CLI tool to split panes on Ghostty Terminal"
  homepage "https://github.com/rikeda71/ghostty-pane-splitter"
  url "https://github.com/rikeda71/ghostty-pane-splitter/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "0f7f70f33157672f64645b6c095562ae63c369a5aadf9fe677c3d2167e48d2b4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ghostty-pane-splitter --help")
  end
end
