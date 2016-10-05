//
//  UIViewController+T21NavigationBarUtils.m
//  T21Categories/UIViewController/NavigationBarUtils
//
//  Created by David Arrufat on 13/05/15.
//  Copyright (c) 2015 Tempos 21. All rights reserved.
//

#import "UIViewController+T21NavigationBarUtils.h"
#import "UIBarButtonItem+T21CommonUtils.h"

@implementation UIViewController (T21NavigationBarUtils)

#pragma mark - Back button methods

- (void)setBackButtonWithText:(NSString *)text
{
    self.navigationItem.backBarButtonItem = [UIBarButtonItem buttonItemWithText:text target:nil action:nil];
}

- (void)setBackButtonWithImage:(UIImage *)image
{
    self.navigationItem.backBarButtonItem = [UIBarButtonItem buttonItemWithImage:image target:nil action:nil];
}

#pragma mark - Left bar button methods

- (void)addLeftBarButton:(UIButton *)button backButton:(BOOL)backButton
{
    [self addLeftBarButtonItem:[[UIBarButtonItem alloc] initWithCustomView:button] backButton:backButton];
}

- (void)addLeftBarButtonItem:(UIBarButtonItem *)buttonItem backButton:(BOOL)backButton
{
    self.navigationItem.leftItemsSupplementBackButton = backButton;

    NSMutableArray *buttons = [NSMutableArray new];
    [buttons addObjectsFromArray:self.navigationItem.leftBarButtonItems];
    [buttons addObject:buttonItem];
    
    self.navigationItem.leftBarButtonItems = buttons;
}

#pragma mark - Right bar button methods

- (void)addRightBarButton:(UIButton *)button
{
    [self addRightBarButtonItem:[[UIBarButtonItem alloc] initWithCustomView:button]];
}

- (void)addRightBarButtonItem:(UIBarButtonItem *)buttonItem
{
    NSMutableArray *buttons = [[NSMutableArray alloc] initWithObjects:buttonItem, nil];
    [buttons addObjectsFromArray:self.navigationItem.rightBarButtonItems];
    self.navigationItem.rightBarButtonItems = buttons;
}

@end
