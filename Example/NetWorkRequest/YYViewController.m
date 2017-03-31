//
//  YYViewController.m
//  NetWorkRequest
//
//  Created by qqbbzz@126.com on 03/31/2017.
//  Copyright (c) 2017 qqbbzz@126.com. All rights reserved.
//

#import "YYViewController.h"
#import "NetWorkRequest.h"
@interface YYViewController ()

@end

@implementation YYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [NetWorkRequest post:@"https://www.baidu.com" params:[NSMutableDictionary dictionary] success:nil failure:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
