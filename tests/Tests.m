//
//  Tests.m
//  Tests
//
//  Created by Eloi Guzmán on 16/05/14.
//  Copyright (c) 2014 Tempos21. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "XCTest_AsyncHelper.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    //Every time we use an async test we must call ASYNC_TEST_START
    ASYNC_TEST_START
    
    //Simulating an async callback, that will call "exampleAsyncCallBack" after 3 seconds.
    [self performSelector:@selector(exampleAsyncCallBack) withObject:nil afterDelay:2.0f];
    
    // Just after sending the async process we stop the Thread here calling ASYNC_TEST_END_TIMEOUT(seconds of timeout)
    // The thread will resume again if an ASYNC_TEST_DONE is called or when the timeout is reached.
    ASYNC_TEST_END_TIMEOUT(10)
}

-(void)exampleAsyncCallBack
{
    //Simulate that the async process has finished.
    ASYNC_TEST_DONE
}

@end
