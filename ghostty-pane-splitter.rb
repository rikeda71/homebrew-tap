class GhosttyPaneSplitter < Formula
  desc "CLI tool to split panes on Ghostty Terminal"
  homepage "https://github.com/rikeda71/ghostty-pane-splitter"
  url "https://github.com/rikeda71/ghostty-pane-splitter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "71aed21351a76f53201a739c3874575a92bf5e3a065258acfdc41ccc95eb656d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ghostty-pane-splitter --help")
  end
end
