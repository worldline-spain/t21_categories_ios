//
//  UIScreen+T21CommonUtils.h
//  T21Categories/UIScreen/CommonUtils
//
//  Created by David Arrufat on 19/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#pragma mark - Screen info

// Frame
#define SCREEN_FRAME (CGRectMake(0,0,SCREEN_WIDTH,SCREEN_HEIGHT))

#define SCREEN_HEIGHT [UIScreen getScreenHeight]
#define SCREEN_WIDTH [UIScreen getScreenWidth]

@interface UIScreen (T21CommonUtils)

/**
 * @return The width of the screen, measured in points.
 */

+ (CGFloat) getScreenWidth;

/**
 * @return The height of the screen, measured in points.
 */

+ (CGFloat) getScreenHeight;

@end
