//
//  NSBundle+HoloLocalized.m
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import "NSBundle+HoloLocalized.h"
#import <objc/runtime.h>

static NSString *holoLanguage = nil;

@implementation NSBundle (HoloLocalized)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSelector = @selector(localizedStringForKey:value:table:);
        SEL swizzledSelector = @selector(_holo_localizedStringForKey:value:table:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL success = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (success) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (NSString *)_holo_localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName {
    NSString *path = [self pathForResource:holoLanguage ofType:@"lproj"];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    
    if (holoLanguage && bundle) {
        return [bundle localizedStringForKey:key value:value table:tableName];
    } else {
        return [self _holo_localizedStringForKey:key value:value table:tableName];
    }
}

+ (void)holo_configureLanguage:(NSString *)language {
    holoLanguage = language;
}

@end
