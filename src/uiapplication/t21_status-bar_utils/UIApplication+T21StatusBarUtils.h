//
//  UIApplication+T21StatusBarUtils.h
//  T21Categories/UIApplication/StatusBarUtils
//
//  Created by David Arrufat on 19/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#define STATUS_BAR_FRAME (CGRectMake(0,0,STATUS_BAR_WIDTH,STATUS_BAR_HEIGHT))

#define STATUS_BAR_WIDTH [UIApplication getStatusBarWidth]
#define STATUS_BAR_HEIGHT [UIApplication getStatusBarHeight]

#define STATUS_BAR_ORIENTATION [UIApplication sharedApplication].statusBarOrientation

@interface UIApplication (T21StatusBarUtils)

/**
 * @return The width of the status bar, measured in points.
 */

+ (CGFloat) getStatusBarWidth;

/**
 * @return The height of the status bar, measured in points.
 */

+ (CGFloat) getStatusBarHeight;

@end
