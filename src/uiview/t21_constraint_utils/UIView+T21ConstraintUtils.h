//
//  UIView+T21ConstraintUtils.h
//  MyApp
//
//  Created by Rocio Tovar on 6/7/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (T21ConstraintUtils)

/**
 * @discussion Adds a Width constraint of a given value to the view programmatically.
 * @param width CGFloat value of the constraint.
 */
- (void)addConstraintWidth:(CGFloat)width;

/**
 * @discussion Adds a Height constraint of a given value to the view programmatically.
 * @param height CGFloat value of the constraint.
 */
- (void)addConstraintHeight:(CGFloat)height;

/**
 * @discussion Adds a Trailing constraint of 0 between the view and the superview programmatically.
 */
- (void)addConstraintTrailingZero;

/**
 * @discussion Adds a Leading constraint of 0 between the view and the superview programmatically.
 */
- (void)addConstraintLeadingZero;

/**
 * @discussion Adds a Leading constraint of a given value between the view and the superview programmatically.
 * @param constant CGFloat value of the constraint.
 */
- (void)addConstraintLeadingWithConstant:(CGFloat)constant;

/**
 * @discussion Adds a Trailing constraint of a given value between the view and the superview programmatically.
 * @param constant CGFloat value of the constraint.
 */
- (void)addConstraintTrailingWithConstant:(CGFloat)constant;

/**
 * @discussion Adds a Top constraint of 0 between the view and the superview programmatically.
 */
- (void)addConstraintTopZero;

/**
 * @discussion Adds a Top constraint of a given value between the view and the superview programmatically.
 * @param constant CGFloat value of the constraint.
 */
- (void)addConstraintTopWithConstant:(CGFloat)constant;

/**
 * @discussion Adds a Bottom constraint of 0 between the view and the superview programmatically.
 */
- (void)addConstraintBottomZero;

/**
 * @discussion Adds a Bottom constraint of a given value between the view and the superview programmatically.
 * @param constant CGFloat value of the constraint.
 */
- (void)addConstraintBottomWithConstant:(CGFloat)constant;

/**
 * @discussion Adds a Center Y axis constraint of 0 between the view and the superview programmatically.
 */
- (void)addConstraintCenterYZero;

/**
 * @discussion Adds a Center X axis constraint of 0 between the view and the superview programmatically.
 */
- (void)addConstraintCenterXZero;

/**
 * @discussion Adds a 0 value constraint to all sides between the view and the superview programmatically.
 */
- (void)addConstraintAllSidesZero;

/**
 * @discussion Adds a Center X axis constraint of a given value between the view and the superview programmatically.
 * @param constant CGFloat value of the constraint.
 */
- (void)addConstraintCenterXWithConstant:(CGFloat)constant;

/**
 * @discussion Adds a Center Y axis constraint of a given value between the view and the superview programmatically.
 * @param constant CGFloat value of the constraint.
 */
- (void)addConstraintCenterYWithConstant:(CGFloat)constant;

@end
