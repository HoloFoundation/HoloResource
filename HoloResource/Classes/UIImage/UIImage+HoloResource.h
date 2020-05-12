//
//  UIImage+HoloResource.h
//  HoloResource
//
//  Created by 与佳期 on 2020/4/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#if defined(HOLO_POD_NAME)
#define holo_imageNamed(name) [UIImage holo_imageNamed:name inBundle:HOLO_POD_NAME];
#endif

@interface UIImage (HoloResource)

+ (UIImage *)holo_imageNamed:(NSString *)name inBundle:(NSString *)bundleName;

@end

NS_ASSUME_NONNULL_END
