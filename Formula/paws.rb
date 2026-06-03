class Paws < Formula
  desc "Play games in your terminal while your AI coding agent works"
  homepage "https://github.com/interesting-vibe-coding/paws"
  url "https://github.com/interesting-vibe-coding/paws/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "55ae0732aecf1d1a53784864ed0fa3264835e731e0731dd057eff0f683c14710"
  license "MIT"

  head "https://github.com/interesting-vibe-coding/paws.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"paws", "--list"
  end
end
