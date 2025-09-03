class Nux < Cask
  desc "Native macOS terminal built with SwiftUI - calm, fast experience with AI integration"
  homepage "https://github.com/LakshBharani/nux"
  version "1.0.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" 
  
  url "https://github.com/LakshBharani/nux/releases/download/v#{version}/nux-#{version}.zip"
  name "nux"
  
  app "nux.app"
  
  zap trash: [
    "~/Library/Preferences/com.LakshBharani.nux.plist",
    "~/Library/Application Support/nux",
    "~/Library/Caches/com.LakshBharani.nux"
  ]
  
  caveats <<~EOS
    nux requires macOS 14+ (Sonoma).
    
    After installation, you can launch nux from your Applications folder.
  EOS
end
