//
//  CryptoTests.m
//  AFCommonExample
//
//  Created by 孙超凡 QQ:729397005 on 14-12-17.
//  Copyright (c) 2014年 ManGang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AFCommon.h"

@interface CryptoTests : XCTestCase

@end

@implementation CryptoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    NSString* str = @"this is a test";
    NSError* error = nil;
    NSData* data = [[str dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:@"haha" error:&error];
    if (error) {
        NSLog(@"Error = %@",error);
    }
    NSString* aesStr = [data base64EncodedStringWithOptions:NSDataBase64Encoding76CharacterLineLength];
    NSLog(@"AES data = %@",aesStr);
    NSData* orginData = [[[NSData alloc] initWithBase64EncodedString:aesStr options:NSDataBase64DecodingIgnoreUnknownCharacters] decryptedAES256DataUsingKey:@"haha" error:&error];
    NSString* orginStr = [[NSString alloc] initWithData:orginData encoding:NSUTF8StringEncoding];
    if (error) {
        NSLog(@"Error = %@",error);
    }
    NSLog(@"orginStr = %@",orginStr);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
