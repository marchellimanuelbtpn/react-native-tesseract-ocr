require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-tesseract-ocr'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = 'https://github.com/jonathanpalma/react-native-tesseract-ocr'
  s.source         = { :git => 'https://github.com/jonathanpalma/react-native-tesseract-ocr', :branch => 'lalala' }

  s.platform       = :ios, '8.0'

  s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/*.{h,m}'

  s.dependency 'TesseractOCRiOS', '4.0.0'
  s.dependency 'GPUImage', '0.1.7'
end
