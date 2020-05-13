//
//  HoloResourceDemoA.m
//  HoloResourceDemoA
//
//  Created by 与佳期 on 2020/5/10.
//

#import "HoloResourceDemoA.h"
#import <HoloResource/HoloResource.h>

@implementation HoloResourceDemoA

+ (NSString *)logPodName {
    return HOLO_POD_NAME;
}

+ (UIImage *)loadPodImage {
    return holo_imageNamed(@"home");
}

+ (NSString *)logPodLocalized {
    return HoloLocalizedStringFromTable(@"holo_resource_demo_a_sure", @"HoloResourceDemoA", nil);
}

@end
