cask "agentwatch-sync-qa" do
  version "0.0.0-qa"
  sha256 "229f71885efaf3ab3e1547d319d7ecab50d34504a4289f8c13f4aa01ba97ef16"

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
