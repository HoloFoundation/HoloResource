//
//  NSBundle+HoloResource.h
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#if defined(HOLO_POD_NAME)
#define holo_currentBundle [NSBundle holo_bundleNamed:HOLO_POD_NAME];
#endif

@interface NSBundle (HoloResource)

+ (NSBundle *)holo_bundleNamed:(NSString *)bundleName;

@end

NS_ASSUME_NONNULL_END
