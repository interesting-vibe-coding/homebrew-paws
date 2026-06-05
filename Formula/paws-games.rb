class PawsGames < Formula
  desc "8 terminal games for Paws: Dog Jump, Tetris, Snake, 2048, Breakout & more"
  homepage "https://github.com/interesting-vibe-coding/paws-games"
  url "https://github.com/interesting-vibe-coding/paws-games/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "bcb250805a497d602cb58bbd2dda697fca1e217a8635962d54364da30b2b41de"
  license "MIT"

  head "https://github.com/interesting-vibe-coding/paws-games.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "jump-high", *std_cargo_args
    system "cargo", "install", "--bin", "earth-online", *std_cargo_args
    system "cargo", "install", "--bin", "tetris", *std_cargo_args
    system "cargo", "install", "--bin", "snake", *std_cargo_args
    system "cargo", "install", "--bin", "2048", *std_cargo_args
    system "cargo", "install", "--bin", "breakout", *std_cargo_args
    system "cargo", "install", "--bin", "space-invaders", *std_cargo_args
    system "cargo", "install", "--bin", "vibe", *std_cargo_args
  end

  test do
    assert_path_exists bin/"jump-high"
    assert_path_exists bin/"tetris"
    assert_path_exists bin/"snake"
    assert_path_exists bin/"vibe"
  end
end
