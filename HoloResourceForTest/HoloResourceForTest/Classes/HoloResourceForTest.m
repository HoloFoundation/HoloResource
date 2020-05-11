//
//  HoloResourceForTest.m
//  HoloResourceForTest
//
//  Created by 与佳期 on 2020/5/10.
//

#import "HoloResourceForTest.h"
#import <HoloResource/HoloResource.h>

@implementation HoloResourceForTest

+ (NSString *)logPodName {
    return HOLO_POD_NAME;
}

+ (UIImage *)loadPodImage {
    return holo_imageNamed(@"home");
}

@end
