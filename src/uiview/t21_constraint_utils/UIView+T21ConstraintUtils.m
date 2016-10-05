//
//  UIView+T21ConstraintUtils.m
//  MyApp
//
//  Created by Rocio Tovar on 6/7/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "UIView+T21ConstraintUtils.h"

@implementation UIView (T21ConstraintUtils)


- (void)addConstraintWidth:(CGFloat)width
{
    [self addSizeConstraintWithConstant:width toAttribute:NSLayoutAttributeWidth];
}

- (void)addConstraintHeight:(CGFloat)height
{
    [self addSizeConstraintWithConstant:height toAttribute:NSLayoutAttributeHeight];
}

- (void)addConstraintTrailingZero
{
    [self addConstraintZeroToAttribute:NSLayoutAttributeTrailing];
}

- (void)addConstraintLeadingZero
{
    [self addConstraintZeroToAttribute:NSLayoutAttributeLeading];
}

- (void)addConstraintZeroToAttribute:(NSLayoutAttribute)attribute
{
    [self addConstraintWithConstant:0 toAttribute:attribute];
}

- (void)addConstraintLeadingWithConstant:(CGFloat)constant
{
    [self addConstraintWithConstant:constant toAttribute:NSLayoutAttributeLeading];
}

- (void)addConstraintTrailingWithConstant:(CGFloat)constant
{
    [self addConstraintWithConstant:constant toAttribute:NSLayoutAttributeTrailing];
}

- (void)addConstraintTopZero
{
    [self addConstraintTopWithConstant:0];
}

- (void)addConstraintTopWithConstant:(CGFloat)constant
{
    [self addConstraintWithConstant:constant toAttribute:NSLayoutAttributeTop];
}

- (void)addConstraintBottomZero
{
    [self addConstraintBottomWithConstant:0];
}

- (void)addConstraintBottomWithConstant:(CGFloat)constant
{
    [self addConstraintWithConstant:constant toAttribute:NSLayoutAttributeBottom];
}

- (void)addConstraintCenterXZero
{
    [self addConstraintWithConstant:0 toAttribute:NSLayoutAttributeCenterX];
}

- (void)addConstraintCenterXWithConstant:(CGFloat)constant
{
    [self addConstraintWithConstant:constant toAttribute:NSLayoutAttributeCenterX];
}

- (void)addConstraintCenterYZero
{
    [self addConstraintWithConstant:0 toAttribute:NSLayoutAttributeCenterY];
}

- (void)addConstraintCenterYWithConstant:(CGFloat)constant
{
    [self addConstraintWithConstant:constant toAttribute:NSLayoutAttributeCenterY];
}

- (void)addConstraintAllSidesZero
{
    [self addConstraintTopWithConstant:0];
    [self addConstraintBottomWithConstant:0];
    [self addConstraintZeroToAttribute:NSLayoutAttributeLeading];
    [self addConstraintZeroToAttribute:NSLayoutAttributeTrailing];
}

- (void)addSizeConstraintWithConstant:(CGFloat)constant toAttribute:(NSLayoutAttribute)attribute
{
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:attribute
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                              multiplier:1
                                                                constant:constant]];
}

- (void)addConstraintWithConstant:(CGFloat)constant toAttribute:(NSLayoutAttribute)attribute
{
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:attribute
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:attribute
                                                              multiplier:1
                                                                constant:constant]];
}

@end