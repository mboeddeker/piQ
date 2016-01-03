Pod::Spec.new do |s|
 
  s.name         = "piQ"
  s.version      = "0.1"
  s.summary      = „piQ is an open framework, written in Swift, for ImageLovers <3“
 
  s.description  = <<-DESC
                   This is my long description here... yada, yada.
                   DESC
 
  s.homepage     = "https://buchzulang.com"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "mboeddeker" => "info@buchzulang.com" }
  s.social_media_url   = "https://twitter.com/m_boeddeker“
  s.platform     = :ios, "9.1"
  s.source       = { :git => "https://github.com/mboeddeker/piQ.git", :tag => s.version }
  s.source_files  = "**/**/*.swift" 
end
