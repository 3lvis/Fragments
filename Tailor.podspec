Pod::Spec.new do |s|
  s.name             = "Tailor"
  s.summary          = "A short description of Tailor."
  s.version          = "0.1.0"
  s.homepage         = "https://github.com/3lvis/Tailor"
  s.license          = 'MIT'
  s.author           = { "Elvis Nuñez" => "elvisnunez@me.com" }
  s.source           = { :git => "https://github.com/3lvis/Tailor.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/3lvis'
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Source/**/*'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
