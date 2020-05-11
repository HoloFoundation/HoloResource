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
}

@end
