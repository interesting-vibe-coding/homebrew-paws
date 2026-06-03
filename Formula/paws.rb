class Paws < Formula
  desc "Play games in your terminal while your AI coding agent works"
  homepage "https://github.com/interesting-vibe-coding/paws"
  license "MIT"

  stable do
    url "https://github.com/interesting-vibe-coding/paws/archive/refs/tags/v0.4.0.tar.gz"
    sha256 "3831a757360847c5551013ab7ef6212c561131bd8ac549e3f1e9df740bff78db"
    version "0.4.0"
  end

  head "https://github.com/interesting-vibe-coding/paws.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"paws", "--list"
  end
end
