//
//  UIButton+AFCommon.h
//  AFCommon
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-3-29.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (AFCommon)
/** Creates and returns a new button of type `UIButtonCustom` with the specified frame.
 @param frame The frame for the button view.
 @return A newly create button.
 */
+ (UIButton*) buttonWithFrame:(CGRect)frame;

/** Creates and returns a new button of type `UIButtonCustom` with the specified frame and title.
 @param frame The frame for the button view.
 @param title The title for `UIControlStateNormal`.
 @return A newly create button.
 */
+ (UIButton*) buttonWithFrame:(CGRect)frame title:(NSString*)title;

/** Creates and returns a new button of type `UIButtonCustom` with the specified frame, title and background image.
 @param frame The frame for the button view.
 @param title The title for `UIControlStateNormal`.
 @param backgroundImage The background image for `UIControlStateNormal`.
 @return A newly create button.
 */
+ (UIButton*) buttonWithFrame:(CGRect)frame title:(NSString*)title backgroundImage:(UIImage*)backgroundImage;

/** Creates and returns a new button of type `UIButtonCustom` with the specified frame, title and background image.
 @param frame The frame for the button view.
 @param title The title for `UIControlStateNormal`.
 @param backgroundImage The background image for `UIControlStateNormal`.
 @param highlightedBackgroundImage The background image for `UIControlStateHighlighted`
 @return A newly create button.
 */
+ (UIButton*) buttonWithFrame:(CGRect)frame title:(NSString*)title backgroundImage:(UIImage*)backgroundImage highlightedBackgroundImage:(UIImage*)highlightedBackgroundImage;

@end
