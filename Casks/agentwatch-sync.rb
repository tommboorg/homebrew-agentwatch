cask "agentwatch-sync" do
  version "0.1.9"
  sha256 "PASTE_YOUR_SHA256_HERE"

  url "https://github.com/tommboorg/agentwatch/releases/download/sync-test/agentwatch-sync.pkg"
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