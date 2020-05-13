//
//  HOLOViewController.m
//  HoloResource
//
//  Created by gonghonglou on 04/30/2020.
//  Copyright (c) 2020 gonghonglou. All rights reserved.
//

#import "HOLOViewController.h"
#import <HoloResource/HoloResource.h>
#import <HoloResourceDemoA/HoloResourceDemoA.h>

@interface HOLOViewController ()

@end

@implementation HOLOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [NSBundle holo_configureLanguage:@"ja"];
    NSLog(@"---localized:%@", [HoloResourceDemoA logPodLocalized]);
    
    UIImageView *imageView = [UIImageView new];
    imageView.frame = CGRectMake(0, 0, 50, 50);
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    imageView.image = [HoloResourceDemoA loadPodImage];
    NSLog(@"---loadPodImage:%@", [HoloResourceDemoA loadPodImage]);
}

@end
