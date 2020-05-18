# HoloResource

[![CI Status](https://img.shields.io/travis/gonghonglou/HoloResource.svg?style=flat)](https://travis-ci.org/gonghonglou/HoloResource)
[![Version](https://img.shields.io/cocoapods/v/HoloResource.svg?style=flat)](https://cocoapods.org/pods/HoloResource)
[![License](https://img.shields.io/cocoapods/l/HoloResource.svg?style=flat)](https://cocoapods.org/pods/HoloResource)
[![Platform](https://img.shields.io/cocoapods/p/HoloResource.svg?style=flat)](https://cocoapods.org/pods/HoloResource)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

需要在 pod install 之后调用脚本配置预编译宏：`HOLO_POD_NAME`，例如在 Pofile 里：
```shell
post_install do |installer|
  system "sh Pods/HoloResource/HoloResource/Assets/holo_pod_name_config.sh"
end
```

该脚本默认给所有 Pod 添加配置，如果想指定 Pod 添加配置的话给脚本传入参数，例如在 Pofile 里：
```shell
post_install do |installer|
  system "sh Pods/HoloResource/HoloResource/Assets/holo_pod_name_config.sh PodA PodB PodC"
end
```

## Usage

### 图片 UIImage
```objc
UIImage *image = HoloImageNamed(@"icon");
// or
UIImage *image = [UIImage holo_imageNamed:@"icon" inBundle:HOLO_POD_NAME];
```

### 路径 NSBundle
```objc
NSBundle *bundle = HoloCurrentBundle;
// or
NSBundle *bundle = [NSBundle holo_bundleNamed:HOLO_POD_NAME];
```

### 字体 UIFont
```objc
// 注册自定义字体
HoloRegisterFont(@"GOTHIC", @"TTF");
// or
[UIFont holo_registerFont:@"GOTHIC" withExtension:@"TTF" bundleName:HOLO_POD_NAME];
```

### 本地化语言 Localized
```objc
NSString *string = HoloLocalizedStringFromTable(@"key", @"table", nil);
// or
NSString *string = HoloLocalizedStringWithDefaultValue(@"key", @"table", @"value", nil);
```

## Installation

HoloResource is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HoloResource'
```

## Author

gonghonglou, gonghonglou@icloud.com

## License

HoloResource is available under the MIT license. See the LICENSE file for more info.


