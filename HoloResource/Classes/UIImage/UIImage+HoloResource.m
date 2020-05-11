//
//  UIImage+HoloResource.m
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import "UIImage+HoloResource.h"

@implementation UIImage (HoloResource)

+ (nullable UIImage *)holo_imageNamed:(NSString *)name inBundleName:(nullable NSString *)bundleName {
    UIImage *image = [self _holo_imageNamed1:name inBundleName:bundleName];
    if (!image) image = [self _holo_imageNamed2:name inBundleName:bundleName];
    if (!image) image = [self _holo_imageNamed3:name inBundleName:bundleName];
    if (!image) image = [self _holo_imageNamed4:name inBundleName:bundleName];
    return image;
}

+ (nullable UIImage *)_holo_imageNamed1:(NSString *)name inBundleName:(nullable NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"%@.bundle", bundleName];
    return [self _holo_imageNamed:name pathComponent:pathComponent];
}

+ (nullable UIImage *)_holo_imageNamed2:(NSString *)name inBundleName:(nullable NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"Frameworks/%@.framework/%@.bundle", bundleName, bundleName];
    return [self _holo_imageNamed:name pathComponent:pathComponent];
}

+ (nullable UIImage *)_holo_imageNamed3:(NSString *)name inBundleName:(nullable NSString *)bundleName {
    return [UIImage imageNamed:name];
}

+ (nullable UIImage *)_holo_imageNamed4:(NSString *)name inBundleName:(nullable NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"Frameworks/%@.framework", bundleName];
    return [self _holo_imageNamed:name pathComponent:pathComponent];
}

+ (nullable UIImage *)_holo_imageNamed:(NSString *)name pathComponent:(nullable NSString *)pathComponent {
    NSString *bundlePath = [NSBundle.mainBundle.resourcePath stringByAppendingPathComponent:pathComponent];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
}

@end
