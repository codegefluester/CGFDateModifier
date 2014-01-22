Pod::Spec.new do |s|

  s.name         = "CGFDateModifier"
  s.version      = "0.0.2"
  s.summary      = "Modify a NSDate the easy way."

  s.description  = <<-DESC
                   CGFDateModifier
===============

Modify a NSDate the easy way


Example usage
===
```objc

NSDate *oneWeekFromNow = [CGFDateModifier dateByModifiyingDate:[NSDate date] 
                                                  withModifier:@"+1 week"];

NSDate *multipleModifiers = [CGFDateModifier dateByModifiyingDate:[NSDate date] 
                                                    withModifiers:@[@"+1 week", @"+2 days"]];
```
                   DESC

  s.homepage     = "http://github.com/codegefluester/CGFDateModifier"
  s.license      = 'MIT'
  s.author       = { "codegefluester" => "bjoern@codegefluester.de" }
  s.source       = { :git => "https://github.com/codegefluester/CGFDateModifier.git", :tag => "0.0.2" }
  s.source_files  = '*.{h,m}'
  s.exclude_files = 'Sample/*'

end
