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
    
    NSLog(@"---loadPodImage:%@", [HoloResourceForTest loadPodImage]);
    
    UIImageView *imageView = [UIImageView new];
    imageView.frame = CGRectMake(0, 0, 50, 50);
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    imageView.image = [HoloResourceForTest loadPodImage];
}

@end
