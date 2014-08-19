//
//  ViewController.m
//  AFCommonExample
//
//  Created by 阿凡树 QQ：729397005 on 14-8-19.
//  Copyright (c) 2014年 ManGang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString* hex = @"0xa0ffe4";
    NSLog(@"%@",[UIColor colorWithHexString:hex]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
