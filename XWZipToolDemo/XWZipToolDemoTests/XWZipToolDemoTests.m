//
//  XWZipToolDemoTests.m
//  XWZipToolDemoTests
//
//  Created by 邱学伟 on 2017/12/5.
//  Copyright © 2017年 邱学伟. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "XWZipTool.h"

@interface XWZipToolDemoTests : XCTestCase

@end

@implementation XWZipToolDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testUnZip {
    NSString *zipFilePath = [[NSBundle mainBundle] pathForResource:@"siheyuan" ofType:@"zip"];
    if (zipFilePath.length > 0) {
        NSString *savePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@"siheyuan"];
        BOOL isSuccess = [XWZipTool unZipFromFilePath:zipFilePath toSaveFilePath:savePath];
        if (isSuccess) {
            NSLog(@"解压路径:%@",savePath);
        }
        XCTAssertTrue(isSuccess);
    }
}

- (void)testUnPasswordZip {
    NSString *zipFilePath = [[NS	Bundle mainBundle] pathForResource:@"123" ofType:@"zip"];
    if (zipFilePath.length > 0) {
        NSString *savePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@"123"];
        BOOL isSuccess = [XWZipTool unZipFromFilePath:zipFilePath password:@"123" toSaveFilePath:savePath];
        if (isSuccess) {
            NSLog(@"解压路径:%@",savePath);
        }
        XCTAssertTrue(isSuccess);
    }
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
