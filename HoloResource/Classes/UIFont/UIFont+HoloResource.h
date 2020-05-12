//
//  UIFont+HoloResource.h
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#if defined(HOLO_POD_NAME)
#define holo_registerFont(name, extension) [UIFont holo_registerFont:name withExtension:extension bundleName:HOLO_POD_NAME];
#endif

@interface UIFont (HoloResource)

+ (void)holo_registerFont:(NSString *)fontName withExtension:(NSString *)extension bundleName:(NSString *)bundleName;

+ (void)holo_registerFont:(NSString *)fontName withExtension:(NSString *)extension inBundle:(NSBundle *)bundle;


@end

NS_ASSUME_NONNULL_END
