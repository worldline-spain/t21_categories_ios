//
//  UIColor+T21CommonUtils.m
//  T21Categories/UIColor/CommonUtils
//
//  Created by David Arrufat on 15/01/14.
//  Copyright (c) 2014 Tempos 21. All rights reserved.
//

#import "UIColor+T21CommonUtils.h"

@implementation UIColor (T21CommonUtils)

- (UIColor *)blackOrWhiteContrastingColor
{
    NSArray *rgbaArray = [self rgbaArray];
    double a = 1 - ((0.299 * [rgbaArray[0] doubleValue]) + (0.587 * [rgbaArray[1] doubleValue]) + (0.114 * [rgbaArray[2] doubleValue]));
    return a < 0.5 ? [UIColor blackColor] : [UIColor whiteColor];
}

- (NSArray *)rgbaArray
{
    // Takes a UIColor and returns R,G,B,A values in NSNumber form
    CGFloat r=0,g=0,b=0,a=0;
    
    if ([self respondsToSelector:@selector(getRed:green:blue:alpha:)]) {
        [self getRed:&r green:&g blue:&b alpha:&a];
    }
    else {
        const CGFloat *components = CGColorGetComponents(self.CGColor);
        r = components[0];
        g = components[1];
        b = components[2];
        a = components[3];
    }
    return @[@(r),
             @(g),
             @(b),
             @(a)];
}

- (UIColor *)blendWithColor:(UIColor *)color withAlpha:(float)alpha
{
    alpha = MIN( 1.0, MAX( 0.0, alpha ) );
    CGFloat beta = 1.0 - alpha;
    CGFloat r1, g1, b1, a1, r2, g2, b2, a2;
    [self getRed:&r1 green:&g1 blue:&b1 alpha:&a1];
    [color getRed:&r2 green:&g2 blue:&b2 alpha:&a2];
    CGFloat blendedRed     = r1 * beta + r2 * alpha;
    CGFloat blendedGreen   = g1 * beta + g2 * alpha;
    CGFloat blendedBlue    = b1 * beta + b2 * alpha;
    CGFloat blendedAlpha   = a1 * beta + a2 * alpha;
    return [UIColor colorWithRed:blendedRed green:blendedGreen blue:blendedBlue alpha:blendedAlpha];
}

- (BOOL)isEqualToColor:(UIColor *)otherColor {
    return CGColorEqualToColor(self.CGColor, otherColor.CGColor);
}

@end