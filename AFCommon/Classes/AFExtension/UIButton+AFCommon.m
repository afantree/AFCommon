//
//  UIButton+AFCommon.m
//  AFCommon
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-3-29.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#import "UIButton+AFCommon.h"

@implementation UIButton (AFCommon)
+ (id) buttonWithFrame:(CGRect)frame{
	return [UIButton buttonWithFrame:frame title:nil];
}
+ (id) buttonWithFrame:(CGRect)frame title:(NSString*)title{
	return [UIButton buttonWithFrame:frame title:title backgroundImage:nil];
}
+ (id) buttonWithFrame:(CGRect)frame title:(NSString*)title backgroundImage:(UIImage*)backgroundImage{
	return [UIButton buttonWithFrame:frame title:title backgroundImage:backgroundImage highlightedBackgroundImage:nil];
}
+ (id) buttonWithFrame:(CGRect)frame title:(NSString*)title backgroundImage:(UIImage*)backgroundImage highlightedBackgroundImage:(UIImage*)highlightedBackgroundImage{
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
	btn.frame = frame;
	[btn setTitle:title forState:UIControlStateNormal];
	[btn setBackgroundImage:backgroundImage forState:UIControlStateNormal];
	[btn setBackgroundImage:highlightedBackgroundImage forState:UIControlStateHighlighted];
	return btn;
}
@end
