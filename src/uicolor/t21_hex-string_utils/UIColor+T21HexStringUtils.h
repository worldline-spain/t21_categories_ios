//
//  UIColor+T21HexStringUtils.h
//  T21Categories/UIColor/HexStringUtils
//
//  Created by David Arrufat on 02/06/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

@interface UIColor (T21HexStringUtils)

/**
 * @discussion Creates and returns a new color object with the given hex string value.
 *
 * @param hexString The string with the hex value with format #FFFFFF.
 *
 * @return The new UIColor object
 */

+ (UIColor *)colorFromHexString:(NSString *)hexString;

/**
 * @discussion Creates and returns a new color object with the given hex string value and the specified alpha component.
 *
 * @param hexString The string with the hex value with format #FFFFFF.
 * @param alpha The opacity value of the new UIColor object.
 *
 * @return The new UIColor object
 */
+ (UIColor *)colorFromHexString:(NSString *)hexString withAlpha:(float)alpha;

/**
 * @discussion Create a NSString with the hex value from the receiver's contents.
 *
 * @return The hex string value.
 */
- (NSString *)getHexString;

@end
