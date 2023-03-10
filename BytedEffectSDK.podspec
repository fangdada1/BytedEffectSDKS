Pod::Spec.new do |s|
  s.name         = "BytedEffectSDK"
  s.version      = "4.3.2"
  s.license      = {
  :type => 'Proprietary',
  :text => <<-LICENSE
  BytedEffects. All Rights Reserved.
  LICENSE
  }
  s.homepage     = 'https://github.com'
  s.authors      = 'lab-cv'
  s.summary      = 'Demo for effect-sdk'
  s.description  = <<-DESC
  * Demo for effect-sdk
  DESC


  s.frameworks   = 'Accelerate','AssetsLibrary','AVFoundation','CoreGraphics','CoreImage','CoreMedia','CoreVideo','Foundation','QuartzCore','UIKit','CoreMotion'
  s.weak_frameworks = 'Metal','MetalPerformanceShaders', 'Photos', 'CoreML'
  s.source       = { "http": "https://himi-public.oss-ap-southeast-1.aliyuncs.com/common/code/BytedEffectResources.zip" }
  s.source_files  =  "include/BytedEffectSDK/*.h"
  s.public_header_files = "include/BytedEffectSDK/*.h"
  s.header_mappings_dir = "include/BytedEffectSDK/"
  s.platform     = :ios, '7.0'
  s.requires_arc = true
 
  if ENV['USE_CK'] != '1'
    s.vendored_frameworks = 'effect-sdk.framework'
  end
 
  s.libraries = 'stdc++', 'c++', 'z'
  s.ios.dependency 'SSZipArchive'
end
