cask "agentwatch-sync" do
  version "0.1.9"
  sha256 "94c1cdafbe8b6d4f72b4394fa207d735cb0d0a8848ecd733cd9727be671df03d"

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
