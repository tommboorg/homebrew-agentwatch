cask "agentwatch-sync-qa" do
  version "0.0.0-qa"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/tommboorg/homebrew-agentwatch/releases/download/sync-v#{version}/agentwatch-sync-qa.pkg"
  name "AgentWatch Sync (QA)"
  desc "AgentWatch sync agent for Claude Desktop and Cursor IDE (QA build)"
  homepage "https://agentwatch.qa.tommbo.com"

  pkg "agentwatch-sync-qa.pkg"

  uninstall pkgutil: "com.tommbo.agentwatch-sync"

  zap trash: [
    "~/.agentwatch",
  ]
end
