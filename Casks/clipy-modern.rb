cask "clipy-modern" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/ryaz/clipy-modern/releases/download/v#{version}/Clipy-#{version}.dmg"
  name "Clipy"
  desc "Modern clipboard manager for macOS with AI-powered tagging"
  homepage "https://github.com/ryaz/clipy-modern"

  depends_on macos: ">= :sonoma"

  app "Clipy.app"

  zap trash: [
    "~/Library/Application Support/com.ryaz.clipy-modern",
    "~/Library/Preferences/com.ryaz.clipy-modern.plist",
    "~/Library/Caches/com.ryaz.clipy-modern",
  ]

  caveats <<~EOS
    Clipy requires Accessibility permissions.
    Go to System Settings > Privacy & Security > Accessibility
    and enable Clipy.

    Since this app is not notarized, on first launch:
    Right-click the app > Open > Open (to bypass Gatekeeper).
    If that doesn't work, run: xattr -cr /Applications/Clipy.app
  EOS
end
