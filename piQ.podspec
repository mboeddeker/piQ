Pod::Spec.new do |s|
 
  s.name         = "piQ"
  s.version      = "0.1"
  s.summary      = "This is my amazing Swift CocoaPod!"
 
  s.description  = <<-DESC
                   This is my long description here... yada, yada.
                   DESC
 
  s.homepage     = "https://buchzulang.com"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "mboeddeker" => "info@buchzulang.com" }
  #s.social_media_url   = "https://twitter.com/basememara"
  s.platform     = :ios, "9.1"
  s.source       = { :git => "https://github.com/basememara/cocoapods-swift-sample.git", :tag => s.version }
  s.source_files  = "piQ/piQ/*.swift"
 
end
