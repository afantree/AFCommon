//
//  AFCommonConfig.h
//  AFCommon
//
//  Created by 阿凡树( http://blog.afantree.com ) on 13-4-12.
//  Copyright (c) 2013年 ManGang. All rights reserved.
//

#ifndef AFCommon_AFCommonConfig_h
#define AFCommon_AFCommonConfig_h

#pragma mark -- 程序沙盒文件路径
// 程序目录，不能存任何东西
#define APP_HOME_PATH NSHomeDirectory()
// 文档目录，需要ITUNES同步备份的数据存这里
#define APP_DOCUMENT_PATH [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
// 系统库目录
#define APP_LIBRARY_PATH [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0]
// 配置目录，配置文件存这里
#define APP_PREFERENCE_PATH [APP_LIBRARY_PATH stringByAppendingString:@"/Preferences"]
// 缓存目录，系统永远不会删除这里的文件，ITUNES会删除
#define APP_CACHES_PATH [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]
// 缓存目录，APP退出后，系统可能会删除这里的内容
#define APP_TEMP_PATH NSTemporaryDirectory()

#pragma mark -- 系统和APP的信息
//系统版本号
#define SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
//当前应用版本 版本比较用
#define APP_CURRENT_VERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
//当前应用名字
#define APP_CURRENT_NAME [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]


#endif
