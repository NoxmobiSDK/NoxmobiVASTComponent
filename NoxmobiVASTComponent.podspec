
Pod::Spec.new do |spec|
  spec.name         = "NoxmobiVASTComponent"
  spec.version      = "1.2.7" #此处要与上传到Git的tag一致
  spec.summary      = "A VAST protocol XML file parser by Noxmobi." #摘要，随便写
  spec.homepage     = "https://github.com/NoxmobiSDK/NoxmobiVASTComponent" #主页，随便写
  spec.license      = "MIT" #许可证类型，我只会MIT，其它的请自行Google
  spec.author       = { "Chong" => "gaochong@bignox.com" } #作者和邮箱地址，随便写

  spec.platform     = :ios, "10.0" #支持的平台，以及支持的最低系统版本
  spec.source       = { :git => "https://github.com/NoxmobiSDK/NoxmobiVASTComponent.git", :tag => "#{spec.version}" }
  spec.source_files = "NoxmobiVASTComponent.framework/Headers/*.{h}" #001号 坑

  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' } #002号 坑
  spec.ios.vendored_frameworks = 'NoxmobiVASTComponent.framework' #003号 坑
  spec.requires_arc = true #是否需要ARC
  spec.frameworks = "Foundation", "UIKit" #依赖多个系统framework
  spec.libraries = 'xml2' # 004号 坑

  # spec.dependency "NoxmobiSDK" #依赖三方的库，如果想要添加多个依赖，不可以用逗号隔开，应该依赖一个写一句。
  spec.dependency "SDWebImage"
end
