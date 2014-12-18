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
    CCCryptorStatus status;
    NSData* strData = [str dataUsingEncoding:NSUTF8StringEncoding];
    //NSData* data = [[str dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:@"1234567890123456" error:&error];
    NSData* data = [strData dataEncryptedUsingAlgorithm:kCCAlgorithmAES128 key:@"1234567890123456" initializationVector:@"0102030405060708" options:kCCOptionPKCS7Padding error:&status];
    NSLog(@"status = %d",status);
    if (error) {
        NSLog(@"Error = %@",error);
    }
    NSString* aesStr = [data base64EncodedStringWithOptions:NSDataBase64Encoding76CharacterLineLength];
    NSLog(@"AES data = %@",aesStr);
    NSData* orginData = [[[NSData alloc] initWithBase64EncodedString:aesStr options:NSDataBase64DecodingIgnoreUnknownCharacters] decryptedAES256DataUsingKey:@"1234567890123456" error:&error];
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
