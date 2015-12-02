Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "Product"
s.summary = "Product to integrate"
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "My license", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "[Me]" => "[me@mymail.com]" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "[www.google.com]"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/DmytroNaumov/UseMeForUI.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files  = "Classes", "Classes/**/*.{h,m,swift}"
s.public_header_files = "Classes/**/*.h"

# 9
s.resources = "UseMeForUI/**/*.{png,jpeg,jpg,storyboard,xib}"
end