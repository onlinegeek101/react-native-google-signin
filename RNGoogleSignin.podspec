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
  s.source_files       = "ios/**/*.{h,m}"
  s.header_dir          = 'RNGoogleSignin'
  s.dependency 'GoogleSignIn'
  s.dependency 'React'

end
