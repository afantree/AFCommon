//
//  NSArray+AFCommon.h
//  AFCommon
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-3-29.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//



@interface NSArray (AFCommon)
/** Returns the object in the array with the lowest index value.
 @return The object in the array with the lowest index value. If the array is empty, returns nil.
 */
- (id) firstObject;

/** Returns a random object in the array.
 @return The object in the array with the lowest index value. If the array is empty, returns nil.
 */
- (id) randomObject;
@end