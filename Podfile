# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

# Ignore all warnings from all pods
inhibit_all_warnings!

target 'XAY Store' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # DI
  pod 'Swinject', '~> 2.6'
  pod 'SwinjectStoryboard', '~> 2.2'

  # UI
  pod 'SDWebImage', '~> 5.0'
  pod 'MBProgressHUD', '~> 1.1'
  pod 'UIScrollView-InfiniteScroll', '~> 1.1'
  pod 'SKPhotoBrowser', '~> 6.1'
  pod 'TPKeyboardAvoiding', '~> 1.3'
  pod 'Toaster', '~> 2.2'
  pod 'AvatarImageView', '~> 2.2'
  pod 'SwipeCellKit', '~> 2.6'
  pod 'UIImage+Additions', '~> 2.1'
  pod 'TTTAttributedLabel', '~> 2.0'
  pod 'DropDown', '~> 2.3'

  # Database
  pod 'CoreStore', '~> 6.3'

  # Architecture
  pod 'RxSwift', '~> 4.5'
  pod 'RxCocoa', '~> 4.5'

  # Crash&Beta
  pod 'Fabric', '~> 1.9'
  pod 'Crashlytics', '~> 3.12'

  # Developer tools
  pod 'SwiftLint', '~> 0.31'

  pod "ShopApp_Shopify", "~> 1.0"

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      if ['Mobile-Buy-SDK'].include? target.name
        target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '4.2'
        end
      end
    end
  end

  target 'XAY StoreTests' do
    pod 'Quick', '~> 2.0'
    pod 'Nimble', '~> 8.0'
  end
end
