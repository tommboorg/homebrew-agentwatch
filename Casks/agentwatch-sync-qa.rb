cask "agentwatch-sync-qa" do
  version "0.0.0-qa"
  sha256 "23f303e1c38ed0930b6697179c1feda3bd6f3d960ad77525b4f27c91bc53fc2c"

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
