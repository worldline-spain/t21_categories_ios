//
//  UIApplication+T21StatusBarUtils.m
//  T21Categories/UIApplication/StatusBarUtils
//
//  Created by David Arrufat on 19/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "UIApplication+T21StatusBarUtils.h"
#import "UIDevice+T21CommonUtils.h"

@implementation UIApplication (T21StatusBarUtils)

+ (CGFloat) getStatusBarWidth
{
    return [UIApplication sharedApplication].statusBarFrame.size.width;
}

+ (CGFloat) getStatusBarHeight
{
    return [UIApplication sharedApplication].statusBarFrame.size.height;
}

@end
