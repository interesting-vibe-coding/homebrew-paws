cask "agentshot" do
  version "0.1.0"
  sha256 "35c802caba551dbe987ebaf62a738d5853c54200aeda388dd8852dec705b496e"

  url "https://github.com/interesting-vibe-coding/agentshot/releases/download/v#{version}/AgentShot.zip"
  name "AgentShot"
  desc "Screenshot tool for AI agents — auto-compress to vision's sweet spot"
  homepage "https://github.com/interesting-vibe-coding/agentshot"

  depends_on macos: ">= :ventura"

  app "AgentShot.app"

  caveats <<~EOS
    AgentShot is ad-hoc signed (free OSS, no Apple Developer ID).
    If macOS blocks it on first launch, run:
      xattr -cr "#{appdir}/AgentShot.app"

    First launch needs Screen Recording permission (to capture).
    Then press ⌘⇧2 to snip → compress → it's on your clipboard.
  EOS
end
