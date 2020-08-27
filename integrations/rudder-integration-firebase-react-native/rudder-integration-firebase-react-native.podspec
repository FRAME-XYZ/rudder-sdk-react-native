require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "rudder-integration-firebase-react-native"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  rudder-integration-firebase-react-native
                   DESC
  s.homepage     = "https://github.com/dhawal1248/rudder-integration-firebase-react-native"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "dhawal1248" => "sanghvi.dhawal101433@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/dhawal1248/rudder-integration-firebase-react-native.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "Rudder-Firebase"
  # ...
  # s.dependency "..."
end

