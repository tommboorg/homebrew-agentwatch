cask "agentwatch-sync-qa" do
  version "0.0.0-qa"
  sha256 "f682aebb9b9e7850b1acfa3c8a045d5d8fb67059683919a3c5888450a80273ca"

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
