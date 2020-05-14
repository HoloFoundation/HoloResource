//
//  UIFont+HoloResource.h
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#if defined(HOLO_POD_NAME)
/// If the pod currently has multiple bundles, please check the target resource or use 'holo_registerFont:withExtension:inBundle:'
#define holo_registerFont(name, extension) [UIFont holo_registerFont:name withExtension:extension bundleName:HOLO_POD_NAME]
#endif

@interface UIFont (HoloResource)

/// If the pod currently has multiple bundles, please check the target resource or use 'holo_registerFont:withExtension:inBundle:'
+ (void)holo_registerFont:(NSString *)fontName withExtension:(NSString *)extension bundleName:(NSString *)bundleName;

+ (void)holo_registerFont:(NSString *)fontName withExtension:(NSString *)extension inBundle:(NSBundle *)bundle;

@end

NS_ASSUME_NONNULL_END
