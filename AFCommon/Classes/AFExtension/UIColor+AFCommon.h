//
//  UIColor+AFCommon.h
//  AFCommon
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-3-29.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#import <UIKit/UIKit.h>
#pragma mark -
#undef	COLOR_RGB
#define COLOR_RGB(R,G,B)		[UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:1.0f]

#undef	COLOR_RGBA
#define COLOR_RGBA(R,G,B,A)	    [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:A]

#undef	COLOR_HEX_RGB
#define COLOR_HEX_RGB(V)		[UIColor colorWithHex:V]
#define COLOR_HEX_STR(V)        [UIColor colorWithHexString:V]
#pragma mark -
@interface UIColor (AFCommon)
/** Creates and returns a color object using the specific hex value.
 @param  NSString : The hex string that will decide the color.
                    Optionally prefixed with "0x","0X" or "#"
 @return The `UIColor` object. if ERROR will return [UIColor clearColor]
 */
+ (UIColor *) colorWithHexString: (NSString *)colorString;

/** Creates and returns a color object using the specific hex value.
 @param hex The hex value that will decide the color.
 @return The `UIColor` object.
 */
+ (UIColor *) colorWithHex:(unsigned int)hex;

/** Creates and returns a color object using the specific hex value.
 @param hex The hex value that will decide the color.
 @param alpha The opacity of the color.
 @return The `UIColor` object.
 */
+ (UIColor *) colorWithHex:(unsigned int)hex alpha:(CGFloat)alpha;

/** Creates and returns a color object with a random color value. The alpha property is 1.0.
 @return The `UIColor` object.
 */
+ (UIColor *) randomColor;
@end
