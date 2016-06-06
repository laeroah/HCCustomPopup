Pod::Spec.new do |s|
  s.name         = "HCCustomPopup"
  s.version      = "1.0"
  s.summary      = "Custom popup view that allows you to place any custom view in it."
  s.homepage     = "https://github.com/laeroah/HCCustomPopup"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Hao Wang" => "https://github.com/laeroah" }
  s.source       = { :git => "https://github.com/laeroah/HCCustomPopup.git", :tag => s.version }
  s.platform     = :ios, '7.0'
  s.source_files = 'CustomPopup', '*.{h,m}'
  s.framework    = 'QuartzCore'
  s.requires_arc = true
end
