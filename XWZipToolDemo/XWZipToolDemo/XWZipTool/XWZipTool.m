//
//  XWZipTool.m
//  XWZipToolDemo
//
//  Created by 邱学伟 on 2017/12/5.
//  Copyright © 2017年 邱学伟. All rights reserved.
//

#import "XWZipTool.h"
#import "ZipArchive.h"

@interface XWZipTool ()
@property (nonatomic, strong) ZipArchive *zipArchive;
+ (ZipArchive *)zipArchive;
@end
@implementation XWZipTool
static ZipArchive *xwzipArchive;

/// 解压有密码的压缩包
+ (BOOL)unZipFromFilePath:(NSString *)fromFilePath password:(NSString *)password toSaveFilePath:(NSString *)saveFilePath {
    if ([[self zipArchive] UnzipOpenFile:fromFilePath Password:password]) {
        BOOL ret = [[self zipArchive] UnzipFileTo:saveFilePath overWrite:YES];
        if (!ret) {
            [[self zipArchive] UnzipCloseFile];
            NSLog(@"您的压缩包有问题!!");
            return NO;
        }
        return YES;
    }
    NSLog(@"压缩包密码有误");
    return NO;
}

/// 解压
+ (BOOL)unZipFromFilePath:(NSString *)fromFilePath toSaveFilePath:(NSString *)saveFilePath{
    if ([[self zipArchive] UnzipOpenFile:fromFilePath]) {
        BOOL ret = [[self zipArchive] UnzipFileTo:saveFilePath overWrite:YES];
        if (!ret) {
            [[self zipArchive] UnzipCloseFile];
            NSLog(@"您的压缩包有问题!!");
            return NO;
        }
        return YES;
    }
    return NO;
}

+ (ZipArchive *)zipArchive {
    if(!xwzipArchive){
        xwzipArchive = [[ZipArchive alloc] init];
    }
    return xwzipArchive;
}
@end
