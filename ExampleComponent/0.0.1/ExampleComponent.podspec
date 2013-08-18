Pod::Spec.new do |s|
  s.name         = "ExampleComponent"
  s.version      = "0.0.1"
  s.summary      = "A short description of ExampleComponent."
  s.homepage     = "https://github.com/paweldudek/example-cocoapods-component.git"
  s.license      = 'MIT'
  s.author       = { "Pawel Dudek" => "pawel@dudek.mobi" }
  s.source       = { :git => "https://github.com/paweldudek/example-cocoapods-component.git", :tag => "#{s.version}" }
  s.platform     = :ios, '5.0'

  s.ios.deployment_target = '5.0'

  s.source_files = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'

  s.resources = "Resources/*.png"

  s.frameworks = 'CoreLocation', 'CFNetwork'
  s.libraries = 'iconv', 'xml2'

  s.requires_arc = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
  s.dependency 'JSONKit', '~> 1.4'
end
