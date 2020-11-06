Pod::Spec.new do |s|
  s.name         = "MySdk-native"
  s.version      = "1.0"
  s.summary      = "MySdk-native"
  s.description  = "MySdk-native react native SDK"
  s.homepage     = "https://github.com/AbdullahAsendar"
  
  s.license      = "MIT"
  s.author       = { "Abdullah Asendar" => "abdullah.asendarz@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/AbdullahAsendar", :tag => "v#{s.version}" }
  s.source_files = "MySdk-native/**/*.{swift,h, m}", "MySdk-native/*.{swift,h, m}"
  s.resources      = "MySdk-native/*.bundle"
  s.preserve_paths = "MySdk-native/**/*"

  s.requires_arc = true
  s.swift_version= '5.0'
    
  s.dependency 'React'
  s.dependency 'React-Core'
  s.dependency 'ReactCommon'
  s.dependency 'React-CoreModules'
  s.dependency 'FBLazyVector'
  s.dependency 'FBReactNativeSpec'
  s.dependency 'RCTRequired'
  s.dependency 'RCTTypeSafety'

  s.dependency 'RNFastImage'
end
