//
//  XCTest_AsyncHelper.h
//  MyPod
//
//  Created by Eloi Guzmán on 16/05/14.
//  Copyright (c) 2014 Tempos21. All rights reserved.
//

#import <XCTest/XCTest.h>

static BOOL hasCalledBack = NO;

#define ASYNC_TEST_START hasCalledBack = NO;

#define ASYNC_TEST_DONE hasCalledBack = YES;


#define ASYNC_TEST_END_TIMEOUT(timeout) \
NSDate *loopUntil = [NSDate dateWithTimeIntervalSinceNow:timeout]; \
while (hasCalledBack == NO && [loopUntil timeIntervalSinceNow] > 0) { \
[[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:loopUntil]; \
} \
if (!hasCalledBack) { XCTFail(@"Timeout"); }

