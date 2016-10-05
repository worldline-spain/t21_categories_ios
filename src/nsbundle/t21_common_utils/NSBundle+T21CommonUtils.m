//
//  NSBundle+T21CommonUtils.m
//  T21Categories/NSBundle/CommonUtils
//
//  Created by David Arrufat on 27/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "NSBundle+T21CommonUtils.h"

@implementation NSBundle (T21CommonUtils)

+ (NSString*) getAppName
{
    return [[self mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"];
}

+ (NSString*) getAppVersion
{
    return [[self mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

@end
