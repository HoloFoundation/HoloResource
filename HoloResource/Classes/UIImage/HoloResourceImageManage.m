//
//  HoloResourceImageManage.m
//  HoloResource
//
//  Created by 与佳期 on 2020/5/11.
//

#import "HoloResourceImageManage.h"

@implementation HoloResourceImageManage

+ (instancetype)sharedInstance {
    static HoloResourceImageManage *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [self new];
    });
    return sharedInstance;
}


#pragma mark - getter
- (YYCache *)yyCache {
    if (!_yyCache) {
        _yyCache = [YYCache cacheWithName:@"holo_resource_image_cache"];
    }
    return _yyCache;
}

@end
