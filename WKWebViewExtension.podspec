
Pod::Spec.new do |s|
  s.name         = "WKWebViewExtension"
  s.version      = "0.1"
  s.summary      = "An extension for WKWebView. Providing menuItems delete 、support protocol 、clear cache of iOS8 and so on."
  s.homepage     = "https://github.com/dequan1331/WKWebViewExtension"
  s.license      = "MIT"
  s.author       = "dequanzhu"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/dequan1331/WKWebViewExtension.git", :tag => "0.1" }
  s.source_files = "WKWebViewExtension/WKWebViewExtension/Source", "WKWebViewExtension/WKWebViewExtension/Source/**/*.{h,m}"
  s.frameworks = "UIKit", "WebKit"
end
