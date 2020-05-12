//
//  NSBundle+HoloResource.m
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import "NSBundle+HoloResource.h"

@implementation NSBundle (HoloResource)

+ (NSBundle *)holo_bundleNamed:(NSString *)bundleName {
    NSBundle *bundle = [self _holo_bundleNamed1:bundleName];
    if (!bundle) bundle = [self _holo_bundleNamed2:bundleName];
    if (!bundle) bundle = [self _holo_bundleNamed3:bundleName];
    if (!bundle) bundle = [self _holo_bundleNamed4:bundleName];
    return bundle;
}

+ (NSBundle *)_holo_bundleNamed1:(NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"%@.bundle", bundleName];
    return [self _holo_bundleWithPathComponent:pathComponent];
}

+ (NSBundle *)_holo_bundleNamed2:(NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"Frameworks/%@.framework/%@.bundle", bundleName, bundleName];
    return [self _holo_bundleWithPathComponent:pathComponent];
}

+ (NSBundle *)_holo_bundleNamed3:(NSString *)bundleName {
    return NSBundle.mainBundle;
}

+ (NSBundle *)_holo_bundleNamed4:(NSString *)bundleName {
    NSString *pathComponent = [NSString stringWithFormat:@"Frameworks/%@.framework", bundleName];
    return [self _holo_bundleWithPathComponent:pathComponent];
}

+ (NSBundle *)_holo_bundleWithPathComponent:(NSString *)pathComponent {
    NSString *bundlePath = [NSBundle.mainBundle.resourcePath stringByAppendingPathComponent:pathComponent];
    return [NSBundle bundleWithPath:bundlePath];
}

@end
