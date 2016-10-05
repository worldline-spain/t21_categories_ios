//
//  UIColor+T21HexStringUtils.h
//  T21Categories/UIColor/HexStringUtils
//
//  Created by David Arrufat on 02/06/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "UIColor+T21HexStringUtils.h"

@implementation UIColor (T21HexStringUtils)

+ (UIColor *)colorFromHexString:(NSString *)hexString
{
    return [self colorFromHexString:hexString withAlpha:1.0];
}

+ (UIColor *)colorFromHexString:(NSString *)hexString withAlpha:(float)alpha
{
    if (hexString && hexString.length == 7) {
        unsigned rgbValue = 0;
        NSScanner *scanner = [NSScanner scannerWithString:hexString];
        [scanner setScanLocation:1]; // bypass '#' character
        [scanner scanHexInt:&rgbValue];
        return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:alpha];
    }
    return nil;
}

- (NSString *)getHexString
{
    int r,g,b;
    CGFloat rFloat, gFloat, bFloat, aFloat;
    [self getRed:&rFloat green:&gFloat blue: &bFloat alpha: &aFloat];
    
    r = (int)(255.0 * rFloat);
    g = (int)(255.0 * gFloat);
    b = (int)(255.0 * bFloat);
    
    return [NSString stringWithFormat:@"%02x%02x%02x",r,g,b];
}


@end
