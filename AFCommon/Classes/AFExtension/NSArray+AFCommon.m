//
//  NSArray+AFCommon.m
//  AFCommon
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-3-29.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#import "NSArray+AFCommon.h"

@implementation NSArray (AFCommon)
- (id) firstObject{
	if(self.count<1) return nil;
	return [self objectAtIndex:0];
}

- (id) randomObject{
	if(self.count<1) return nil;
	return [self objectAtIndex:arc4random() % [self count]];
}
@end