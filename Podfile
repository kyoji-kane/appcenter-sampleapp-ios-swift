target 'sampleapp-ios-swift' do
  platform :ios, '10.0'
  use_frameworks!

  pod 'AppCenter'
  pod 'AppCenter/Push'
  pod 'AppCenter/Distribute'
  
  target 'sampleapp-ios-swiftUITests' do
    inherit! :search_paths
    # Pods for testing
    pod 'VSMobileCenterExtensions'
  end

end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    # CI/CD環境でビルドエラーを防ぐためのおまじない
    # 参考：https://github.com/fastlane/fastlane/issues/10543
    # 　　：https://github.com/fastlane/fastlane/issues/12557
    config.build_settings['PROVISIONING_PROFILE_SPECIFIER'] = ''
    config.build_settings['CODE_SIGNING_REQUIRED'] = 'NO'
    config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
  end
end
