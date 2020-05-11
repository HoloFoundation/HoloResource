//
//  UIImage+HoloResource.h
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define holo_imageNamed(name) [UIImage holo_imageNamed:name inBundleName:HOLO_POD_NAME];

@interface UIImage (HoloResource)

+ (nullable UIImage *)holo_imageNamed:(NSString *)name inBundleName:(nullable NSString *)bundleName;

@end

NS_ASSUME_NONNULL_END
