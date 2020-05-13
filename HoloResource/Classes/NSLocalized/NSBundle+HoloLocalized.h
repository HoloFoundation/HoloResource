//
//  NSBundle+HoloLocalized.h
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import <Foundation/Foundation.h>
#import "NSBundle+HoloResource.h"

NS_ASSUME_NONNULL_BEGIN

#define HoloLocalizedStringFromTable(key, tbl, comment) \
        NSLocalizedStringFromTableInBundle(key, tbl, [NSBundle holo_bundleNamed:HOLO_POD_NAME], comment)

@interface NSBundle (HoloLocalized)

+ (void)holo_configureLanguage:(NSString *)language;

@end

NS_ASSUME_NONNULL_END
