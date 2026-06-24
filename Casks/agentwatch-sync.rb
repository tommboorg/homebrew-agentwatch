cask "agentwatch-sync" do
  version "0.1.9"
  sha256 "e1d62af2b6bc7eedc79ed58d06c750fa199778424cdc867ad55ee07ee0caaa23"

  url "https://github.com/tommboorg/homebrew-agentwatch/releases/download/sync-v#{version}/agentwatch-sync.pkg"
  name "AgentWatch Sync"
  desc "Sync Claude Desktop and Cursor sessions to AgentWatch"
  homepage "https://agentwatch.tommbo.com"

  pkg "agentwatch-sync.pkg"

  uninstall pkgutil:   "com.agentwatch.sync",
            launchctl: "com.agentwatch.sync"

  zap trash: [
    "~/.agentwatch",
    "~/Library/LaunchAgents/com.agentwatch.sync.plist",
    "/tmp/agentwatch-sync.log",
    "/tmp/agentwatch-sync.err",
  ]
end
