//
//  XWZipTool.h
//  XWZipToolDemo
//
//  Created by 邱学伟 on 2017/12/5.
//  Copyright © 2017年 邱学伟. All rights reserved.
//  文件解压工具类

#import <Foundation/Foundation.h>
@interface XWZipTool : NSObject

/**
 压缩包解压

 @param fromFilePath 压缩包原始路径
 @param saveFilePath 解压后保存路径
 @return 是否解压成功
 */
+ (BOOL)unZipFromFilePath:(NSString *)fromFilePath toSaveFilePath:(NSString *)saveFilePath;

/**
 解压有密码的压缩包]
 
 @param fromFilePath 压缩包原始路径
 @param password 压缩包密码
 @param saveFilePath 解压后保存路径
 @return 是否解压成功
 */
+ (BOOL)unZipFromFilePath:(NSString *)fromFilePath password:(NSString *)password toSaveFilePath:(NSString *)saveFilePath;
@end
