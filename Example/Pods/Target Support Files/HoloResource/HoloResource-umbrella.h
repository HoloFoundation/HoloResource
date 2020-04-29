#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "HoloResource.h"
#import "HoloBundle.h"
#import "NSBundle+HoloResource.h"
#import "NSBundle+HoloLocalized.h"
#import "UIFont+HoloResource.h"
#import "UIImage+HoloResource.h"

FOUNDATION_EXPORT double HoloResourceVersionNumber;
FOUNDATION_EXPORT const unsigned char HoloResourceVersionString[];

