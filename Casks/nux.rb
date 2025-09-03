class Nux < Cask
  desc "Native macOS terminal built with SwiftUI - calm, fast experience with AI integration"
  homepage "https://github.com/LakshBharani/nux"
  version "1.0.0"
  sha256 "YOUR_SHA256_HERE" # You'll need to update this after creating a release
  
  url "https://github.com/LakshBharani/nux/releases/download/v#{version}/nux-#{version}.zip"
  name "nux"
  
  app "nux.app"
  
  zap trash: [
    "~/Library/Preferences/com.lakshbharani.nux.plist",
    "~/Library/Application Support/nux",
    "~/Library/Caches/com.lakshbharani.nux"
  ]
  
  caveats <<~EOS
    nux requires macOS 14+ (Sonoma).
    
    After installation, you can launch nux from your Applications folder.
  EOS
end
