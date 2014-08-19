//
//  UIView+AFCommon.m
//  AFCommonTest
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-4-12.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#import "UIView+AFCommon.h"
@implementation UIView (AFCommon)
- (UIImage *)screenshot
{
	UIGraphicsBeginImageContext(self.bounds.size);
	[[UIColor clearColor] setFill];
	[[UIBezierPath bezierPathWithRect:self.bounds] fill];
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	[self.layer renderInContext:ctx];
	UIImage *anImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return anImage;
}

@end
