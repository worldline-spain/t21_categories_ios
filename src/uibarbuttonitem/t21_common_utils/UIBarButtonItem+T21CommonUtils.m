//
//  UIBarButtonItem+T21CommonUtils.h
//  T21Categories/UIBarButtonItem/CommonUtils
//
//  Created by David Arrufat on 13/05/15.
//  Copyright (c) 2015 Tempos 21. All rights reserved.
//

#import "UIBarButtonItem+T21CommonUtils.h"

@implementation UIBarButtonItem (T21CommonUtils)

+ (instancetype)buttonItemWithText:(NSString *)text target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithTitle:text
                                            style:UIBarButtonItemStylePlain
                                           target:target
                                           action:action];
}

+ (instancetype)buttonItemWithImage:(UIImage *)image target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithImage:image
                                            style:UIBarButtonItemStylePlain
                                           target:target
                                           action:action];
}

+ (instancetype)buttonItemWithType:(UIBarButtonSystemItem)type target:(id)target action:(SEL)action
{
    
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:type
                                                         target:target
                                                         action:action];
}

+ (instancetype)buttonItemWithView:(UIView*)view
{
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

@end
