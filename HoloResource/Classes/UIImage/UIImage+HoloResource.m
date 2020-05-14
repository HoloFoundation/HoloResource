//
//  UIImage+HoloResource.m
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import "UIImage+HoloResource.h"

@implementation UIImage (HoloResource)

+ (UIImage *)holo_imageNamed:(NSString *)name inBundle:(NSString *)bundleName {
    UIImage *image = [self _holo_imageNamed1:name inBundle:bundleName];
    if (!image) image = [self _holo_imageNamed2:name inBundle:bundleName];
    if (!image) image = [self _holo_imageNamed3:name inBundle:bundleName];
    if (!image) image = [self _holo_imageNamed4:name inBundle:bundleName];
    return image;
}

+ (UIImage *)_holo_imageNamed1:(NSString *)name inBundle:(NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"%@.bundle", bundleName];
    return [self _holo_imageNamed:name pathComponent:pathComponent];
}

+ (UIImage *)_holo_imageNamed2:(NSString *)name inBundle:(NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"Frameworks/%@.framework/%@.bundle", bundleName, bundleName];
    return [self _holo_imageNamed:name pathComponent:pathComponent];
}

+ (UIImage *)_holo_imageNamed3:(NSString *)name inBundle:(NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"Frameworks/%@.framework", bundleName];
    return [self _holo_imageNamed:name pathComponent:pathComponent];
}

+ (UIImage *)_holo_imageNamed4:(NSString *)name inBundle:(NSString *)bundleName {
    return [UIImage imageNamed:name];
}

+ (UIImage *)_holo_imageNamed:(NSString *)name pathComponent:(NSString *)pathComponent {
    NSString *bundlePath = [NSBundle.mainBundle.resourcePath stringByAppendingPathComponent:pathComponent];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
}

@end
