//
//  UIDevice(Identifier).h
//  UIDeviceAddition
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-4-12.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIDevice (AFCommon)
/**
 判断手机是否越狱
 */
+ (BOOL)isJailBroken;
/**
 返回越狱的工具名字
 */
+ (NSString *)jailBreaker;
/**
 @description get the ip address
 */
+ (NSString *) ipaddress;
/**
 @description get the mac address
 */
+ (NSString *) macaddress;
/*
 * @method uniqueDeviceIdentifier
 * @description use this method when you need a unique identifier in one app.
 * It generates a hash from the MAC-address in combination with the bundle identifier
 * of your app.
 */

+ (NSString *) uniqueDeviceIdentifier;

/*
 * @method uniqueGlobalDeviceIdentifier
 * @description use this method when you need a unique global identifier to track a device
 * with multiple apps. as example a advertising network will use this method to track the device
 * from different apps.
 * It generates a hash from the MAC-address only.
 */

+ (NSString *) uniqueGlobalDeviceIdentifier;

@end
