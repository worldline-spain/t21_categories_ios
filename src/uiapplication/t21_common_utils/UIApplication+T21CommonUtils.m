//
//  UIApplication+T21CommonUtils.h
//  T21Categories/UIApplication/CommonUtils
//
//  Created by David Arrufat on 19/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "UIApplication+T21CommonUtils.h"

@implementation UIApplication (T21CommonUtils)

+ (BOOL) canOpenURL:(NSURL*)url
{
    return [[UIApplication sharedApplication] canOpenURL:url];
}

@end
