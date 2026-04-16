cask "ticket-mill" do
  version "1.0.0"
  sha256 "2f8bd801bd41849685ccdf34ae776834f6ea9815c9f5a7543d622bf082bec751"

  url "https://ticketmill.app/downloads/Ticket-Mill-#{version}.dmg"
  name "Ticket Mill"
  desc "AI-native project management for serious developers — keyboard-first, local-first"
  homepage "https://ticketmill.app"

  depends_on macos: ">= :sonoma"

  app "Ticket Mill.app"

  binary "#{appdir}/Ticket Mill.app/Contents/MacOS/MCPServerCLI",
         target: "#{HOMEBREW_PREFIX}/bin/ticket-mill-mcp"

  zap trash: [
    "~/Library/Application Support/com.ticketmill.app",
    "~/Library/Preferences/com.ticketmill.app.plist",
    "~/Library/Caches/com.ticketmill.app",
    "~/Library/Saved Application State/com.ticketmill.app.savedState",
    "~/.local/bin/MCPServerCLI",
  ]
end
