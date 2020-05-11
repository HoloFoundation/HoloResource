//
//  HoloResourceImageManage.h
//  HoloResource
//
//  Created by 与佳期 on 2020/5/11.
//

#import <Foundation/Foundation.h>
#import <YYCache/YYCache.h>

NS_ASSUME_NONNULL_BEGIN

@interface HoloResourceImageManage : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic, strong) YYCache *yyCache;

@end

NS_ASSUME_NONNULL_END
