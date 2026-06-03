class PawsGames < Formula
  desc "7 terminal games for Paws — Dog Jump, Earth Online, Tetris, Snake, 2048, Breakout, Space Invaders"
  homepage "https://github.com/interesting-vibe-coding/paws-games"
  license "MIT"

  stable do
    url "https://github.com/interesting-vibe-coding/paws-games/archive/refs/tags/v0.4.0.tar.gz"
    sha256 "f492e77965d6e4991915646e815f78141b463c160a19e6c2610f833e7426e85e"
    version "0.4.0"
  end

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
  end

  test do
    assert_predicate bin/"jump-high", :exist?
    assert_predicate bin/"tetris", :exist?
    assert_predicate bin/"snake", :exist?
  end
end
