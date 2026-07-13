cask "agentwatch-sync" do
  version "0.1.9"
  sha256 "8a57f1dbebafe1cc89e9774c2db4e3353c1b88d8ddac9551e99feea9958c9772"

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
