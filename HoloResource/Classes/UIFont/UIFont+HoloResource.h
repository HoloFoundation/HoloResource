//
//  UIFont+HoloResource.h
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#if defined(HOLO_POD_NAME)
/// This might be a problem if the pod currently has multiple bundles
/// please use 'holo_registerFont:withExtension:inBundle:'
#define holo_registerFont(name, extension) [UIFont holo_registerFont:name withExtension:extension bundleName:HOLO_POD_NAME];
#endif

@interface UIFont (HoloResource)

+ (void)holo_registerFont:(NSString *)fontName withExtension:(NSString *)extension inBundle:(NSBundle *)bundle;

/// This might be a problem if the pod currently has multiple bundles
/// please use 'holo_registerFont:withExtension:inBundle:'
+ (void)holo_registerFont:(NSString *)fontName withExtension:(NSString *)extension bundleName:(NSString *)bundleName;


@end

NS_ASSUME_NONNULL_END
