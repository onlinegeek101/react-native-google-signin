require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNGoogleSignin"
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = <<-DESC
                            Pod file to enable linking code from React Native Google Signing and Google/Signing Pod.
                         DESC
  s.homepage            = "https://github.com/devfd/react-native-google-signin"
  s.license             = package['license']
  s.author              = "devfd & TJ Pavlu"
  s.source              = { :git => "https://github.com/devfd/react-native-google-signin", :tag => "v#{s.version}" }
  s.default_subspec     = 'Core'
  s.requires_arc        = true
  s.platform            = :ios, "8.0"
  s.pod_target_xcconfig = { "CLANG_CXX_LANGUAGE_STANDARD" => "c++14" }
  s.header_dir          = 'RNGoogleSignin'
  s.preserve_paths      = "package.json", "LICENSE", "LICENSE-CustomComponents", "PATENTS"

  s.subspec 'Core' do |ss|
    ss.dependency      'GoogleSignIn'
    ss.source_files  = "ios/**/*.{h,m}"
    ss.libraries     = "stdc++"
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(SRCROOT)/../react-native/React"' }
  end
end
