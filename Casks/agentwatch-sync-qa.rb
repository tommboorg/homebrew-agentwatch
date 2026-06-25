cask "agentwatch-sync-qa" do
  version "0.0.0-qa"
  sha256 "5c96b5af57d673e5e3c8c4ac00d16fc78628ea084bdf38866553c75078898d8c"

  url "https://github.com/tommboorg/homebrew-agentwatch/releases/download/sync-v#{version}/agentwatch-sync-qa.pkg"
  name "AgentWatch Sync (QA)"
  desc "AgentWatch sync agent for Claude Desktop and Cursor IDE (QA build)"
  homepage "https://agentwatch.qa.tommbo.com"

  pkg "agentwatch-sync-qa.pkg"

  uninstall pkgutil: "com.agentwatch.sync"

  zap trash: [
    "~/.agentwatch",
  ]
end
