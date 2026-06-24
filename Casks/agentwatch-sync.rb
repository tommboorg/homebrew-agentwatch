cask "agentwatch-sync" do
  version "0.1.9"
  sha256 "8a923fc96b56be380222605d5cdd2344dd4a5c7c38ab784b29203e6c076d886b"

  url "https://github.com/tommboorg/agentwatch/releases/download/sync-v#{version}/agentwatch-sync.pkg"
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