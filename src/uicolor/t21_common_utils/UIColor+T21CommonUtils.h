//
//  UIColor+T21CommonUtils.h
//  T21Categories/UIColor/CommonUtils
//
//  Created by David Arrufat on 15/01/14.
//  Copyright (c) 2014 Tempos 21. All rights reserved.
//

@interface UIColor (T21CommonUtils)

/**
 * @discussion Returns black or white color depending on the current contrasting color.
 * If it's a dark color will return white and vice versa.
 *
 * @return black or white UIColor
 */

- (UIColor *)blackOrWhiteContrastingColor;

/**
 * @discussion Creates and returns a new color object by blending the receiver with the given color and the specified alpha component.
 *
 * @param color UIColor to blend with the receiver.
 * @param alpha The opacity value of the new UIColor object.
 *
 * @return The new UIColor object
 */

- (UIColor *)blendWithColor:(UIColor *)color withAlpha:(float)alpha;

/**
 * @discussion Returns a Boolean value that indicates whether a given color is equal to the receiver comparing their CGColor value
 * 
 * @param otherColor The color with which to compare the receiver.
 *
 * @return YES if otherColor is equivalent to the receiver, otherwise NO.
 */

- (BOOL)isEqualToColor:(UIColor *)otherColor;

@end
