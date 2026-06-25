cask "agentwatch-sync-qa" do
  version "0.0.0-qa"
  sha256 "51abbc25c706f9eb5166254556793ba1ad1984e46e76b7e75425fc8674c0d46b"

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
