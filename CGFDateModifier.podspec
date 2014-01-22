#
#  Be sure to run `pod spec lint CGFDateModifier.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "CGFDateModifier"
  s.version      = "0.0.1"
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
  
  s.source       = { :git => "https://github.com/codegefluester/CGFDateModifier", :tag => "0.0.1" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = '*.{h,m}'
  s.exclude_files = 'Sample/*'

end
