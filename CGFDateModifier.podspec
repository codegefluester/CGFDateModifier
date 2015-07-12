Pod::Spec.new do |s|
  s.name         = "CGFDateModifier"
  s.version      = "0.0.2"
  s.summary      = "Modify a NSDate the easy way."
  s.homepage     = "http://github.com/codegefluester/CGFDateModifier"
  s.license      = 'MIT'
  s.author       = { "codegefluester" => "bjoern@codegefluester.de" }
  s.source       = { :git => "https://github.com/codegefluester/CGFDateModifier.git", :tag => "0.0.2" }
  s.source_files  = '*.{h,m}'
  s.exclude_files = 'Sample/*'
end
