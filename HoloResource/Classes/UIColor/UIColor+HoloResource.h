//
//  UIColor+HoloResource.h
//  HoloResource
//
//  Created by 与佳期 on 2020/5/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (HoloResource)

+ (UIColor *)holo_colorWithHex:(NSInteger)color;

+ (UIColor *)holo_colorWithHex:(NSInteger)color alpha:(CGFloat)alpha;

+ (UIColor *)holo_colorWithHexString:(NSString *)color;

+ (UIColor *)holo_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


+ (UIColor *)holo_colorWithRGBA:(NSInteger)color;

+ (UIColor *)holo_colorWithRGBAHexString:(NSString *)color;

+ (UIColor *)holo_colorWithARGBHexString:(NSString *)color;

@end

NS_ASSUME_NONNULL_END
