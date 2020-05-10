//
//  HOLOViewController.m
//  HoloResource
//
//  Created by gonghonglou on 04/30/2020.
//  Copyright (c) 2020 gonghonglou. All rights reserved.
//

#import "HOLOViewController.h"
#import <HoloResourceForTest/HoloResourceForTest.h>

@interface HOLOViewController ()

@end

@implementation HOLOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"---logPodName:%@", [HoloResourceForTest logPodName]);
    
    UIImageView *imageView = [UIImageView new];
    imageView.frame = CGRectMake(100, 200, 50, 50);
    imageView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:imageView];
    
    NSString *bundlePath1 = NSBundle.mainBundle.resourcePath;
    NSString *bundlePath2 = [NSBundle bundleForClass:HoloResourceForTest.class].resourcePath;
    NSLog(@"---isEqual:%d", [bundlePath1 isEqualToString:bundlePath2]);
    
//    NSString *bundlePath = [bundlePath1 stringByAppendingPathComponent:@"HoloResourceForTest.bunbdle"];
    NSString *bundlePath = [bundlePath2 stringByAppendingPathComponent:@"HoloResourceForTest.bunbdle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSLog(@"---bundle:%@", bundle);
}

@end
