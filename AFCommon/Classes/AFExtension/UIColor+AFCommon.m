//
//  UIColor+AFCommon.m
//  AFCommon
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-3-29.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#import "UIColor+AFCommon.h"
#import "NSString+AFCommon.h"
@implementation UIColor (AFCommon)
+ (UIColor *) colorWithHexString: (NSString *)colorString
{
    if (colorString.length < 6) {
        return [UIColor clearColor];
    }
    NSString* resultString;
    if ([colorString rangeOfString:@"(0[xX]|#)[0-9a-fA-F]{6}" options:NSRegularExpressionSearch].location != NSNotFound) {
        resultString = [colorString substringFromIndex:colorString.length-6];
    }
    else{
        return [UIColor clearColor];
    }
    return [self colorWithHex:[resultString intHexValue]];
}
+ (id) colorWithHex:(unsigned int)hex{
	return [self colorWithHex:hex alpha:1];
}

+ (id) colorWithHex:(unsigned int)hex alpha:(CGFloat)alpha
{	
	return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hex & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hex & 0xFF)) / 255.0
                           alpha:alpha];
	
}

+ (UIColor*) randomColor{
	
	int r = arc4random() % 255;
	int g = arc4random() % 255;
	int b = arc4random() % 255;
	return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
	
}

@end
