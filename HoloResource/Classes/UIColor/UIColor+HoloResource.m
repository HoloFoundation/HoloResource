//
//  UIColor+HoloResource.m
//  HoloResource
//
//  Created by 与佳期 on 2020/5/12.
//

#import "UIColor+HoloResource.h"

@implementation UIColor (HoloResource)

+ (UIColor *)holo_colorWithHex:(NSInteger)color {
    return [UIColor holo_colorWithHex:color alpha:1.0f];
}

+ (UIColor *)holo_colorWithHex:(NSInteger)color alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((color & 0xFF0000) >> 16)) / 255.0f
                           green:((float)((color & 0xFF00) >> 8)) / 255.0f
                            blue:((float)(color & 0xFF)) / 255.0f
                           alpha:alpha];
}

+ (UIColor *)holo_colorWithHexString:(NSString *)color {
    return [UIColor holo_colorWithHexString:color alpha:1];
}

+ (UIColor *)holo_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if (cString.length < 6) return [UIColor clearColor];
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if (cString.length != 6) return [UIColor clearColor];
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}


+ (UIColor *)holo_colorWithRGBA:(NSInteger)color {
    return [UIColor colorWithRed:((float)((color & 0xFF000000) >> 24)) / 255.0f
                           green:((float)((color & 0xFF0000) >> 16)) / 255.0f
                            blue:((float)((color & 0xFF00) >> 8)) / 255.0f
                           alpha:((float)(color & 0xFF)) / 255.0f];
}

+ (UIColor *)holo_colorWithRGBAHexString:(NSString *)color {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if (cString.length < 6) return [UIColor clearColor];
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    
    if (cString.length == 8 || cString.length == 6) {
        NSRange range;
        range.length = 2;
        range.location = 0;
        NSString *rString = [cString substringWithRange:range];
        range.location = 2;
        NSString *gString = [cString substringWithRange:range];
        range.location = 4;
        NSString *bString = [cString substringWithRange:range];
        
        unsigned int a = 255;
        if (cString.length == 8) {
            range.location = 6;
            NSString *aString = [cString substringWithRange:range];
            [[NSScanner scannerWithString:aString] scanHexInt:&a];
        }
        
        unsigned int r, g, b;
        [[NSScanner scannerWithString:rString] scanHexInt:&r];
        [[NSScanner scannerWithString:gString] scanHexInt:&g];
        [[NSScanner scannerWithString:bString] scanHexInt:&b];
        
        return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:((float)a / 255.0f)];
    }
    
    return [UIColor clearColor];
}

+ (UIColor *)holo_colorWithARGBHexString:(NSString *)color {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if (cString.length < 6) return [UIColor clearColor];
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    
    if (cString.length == 6 || cString.length == 8) {
        unsigned int a = 255;
        NSRange range;
        range.length = 2;
        if (cString.length == 8) {
            range.location = 0;
            NSString *aString = [cString substringWithRange:range];
            [[NSScanner scannerWithString:aString] scanHexInt:&a];
            cString = [cString substringFromIndex:2];
        }
        
        range.location = 0;
        NSString *rString = [cString substringWithRange:range];
        range.location = 2;
        NSString *gString = [cString substringWithRange:range];
        range.location = 4;
        NSString *bString = [cString substringWithRange:range];
        unsigned int r, g, b;
        [[NSScanner scannerWithString:rString] scanHexInt:&r];
        [[NSScanner scannerWithString:gString] scanHexInt:&g];
        [[NSScanner scannerWithString:bString] scanHexInt:&b];
        
        return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:((float)a / 255.0f)];
    }
    
    return [UIColor clearColor];
}

@end
