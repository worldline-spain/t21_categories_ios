//
//  UIScreen+T21CommonUtils.m
//  T21Categories/UIScreen/CommonUtils
//
//  Created by David Arrufat on 19/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "UIScreen+T21CommonUtils.h"
#import "UIDevice+T21CommonUtils.h"

@interface UIScreen (T21CommonUtilsiOS7)

+ (CGFloat) getScreenWidthiOS7 __OSX_AVAILABLE_BUT_DEPRECATED_MSG(__MAC_10_6,__MAC_10_9,__IPHONE_7_0,__IPHONE_8_0,"Use the getScreenWidth method");
+ (CGFloat) getScreenHeightiOS7 __OSX_AVAILABLE_BUT_DEPRECATED_MSG(__MAC_10_6,__MAC_10_9,__IPHONE_7_0,__IPHONE_8_0,"Use the getScreenHeight method");

@end

@implementation UIScreen (T21CommonUtils)

+ (CGFloat) getScreenWidth
{
    if (IOS_VERSION_NEWER_OR_EQUAL_TO(8))
    {
        return [UIScreen mainScreen].bounds.size.width;
    } else {
        return [self getScreenWidthiOS7];
    }
}

+ (CGFloat) getScreenHeight
{
    if (IOS_VERSION_NEWER_OR_EQUAL_TO(8))
    {
        return [UIScreen mainScreen].bounds.size.height;
    } else {
        return [self getScreenHeightiOS7];
    }
}

+ (CGFloat) getScreenWidthiOS7
{
    if ((UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)))
    {
        return [[UIScreen mainScreen] bounds].size.height;
    }else{
        return [[UIScreen mainScreen] bounds].size.width;
    }
}

+ (CGFloat) getScreenHeightiOS7
{
    if ((UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)))
    {
        return [[UIScreen mainScreen] bounds].size.width;
    }else{
        return [[UIScreen mainScreen] bounds].size.height;
    }
}

@end
