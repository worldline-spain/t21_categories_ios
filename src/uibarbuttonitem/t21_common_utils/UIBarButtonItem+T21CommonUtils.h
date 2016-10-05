//
//  UIBarButtonItem+T21CommonUtils.h
//  T21Categories/UIBarButtonItem/CommonUtils
//
//  Created by David Arrufat on 13/05/15.
//  Copyright (c) 2015 Tempos 21. All rights reserved.
//

@interface UIBarButtonItem (T21CommonUtils)

/**
 * @discussion Creates and returns a new bar button item with the specified attributes.
 *
 * This method is a convenience constructor for creating bar button item objects with specific configurations. If you subclass UIBarButtonItem, this method does not return an instance of your subclass. If you want to create an instance of a specific subclass, you must alloc/init the bar button item directly.
 *
 * @param text The item’s title. If nil a title is not displayed.
 * @param target The object that receives the action message.
 * @param action The action to send to target when this item is selected.
 *
 * @return A newly created bar button item.
 */

+ (instancetype)buttonItemWithText:(NSString *)text target:(id)target action:(SEL)action;

/**
 * @discussion Creates and returns a new bar button item with the specified attributes.
 *
 * This method is a convenience constructor for creating bar button item objects with specific configurations. If you subclass UIBarButtonItem, this method does not return an instance of your subclass. If you want to create an instance of a specific subclass, you must alloc/init the bar button item directly.
 *
 * @param image The item’s image. If nil the image is not displayed.
 * @param target The object that receives the action message.
 * @param action The action to send to target when this item is selected.
 *
 * @return A newly created bar button item.
 */

+ (instancetype)buttonItemWithImage:(UIImage *)image target:(id)target action:(SEL)action;

/**
 * @discussion Creates and returns a new bar button item with the specified attributes.
 *
 * This method is a convenience constructor for creating bar button item objects with specific configurations. If you subclass UIBarButtonItem, this method does not return an instance of your subclass. If you want to create an instance of a specific subclass, you must alloc/init the bar button item directly.
 *
 * @param type The item’s button system type. If nil the button is not displayed.
 * @param target The object that receives the action message.
 * @param action The action to send to target when this item is selected.
 *
 * @return A newly created bar button item.
 */

+ (instancetype)buttonItemWithType:(UIBarButtonSystemItem)type target:(id)target action:(SEL)action;

/**
 * @discussion Creates and returns a new bar button item with the specified attributes.
 *
 * This method is a convenience constructor for creating bar button item objects with specific configurations. If you subclass UIBarButtonItem, this method does not return an instance of your subclass. If you want to create an instance of a specific subclass, you must alloc/init the bar button item directly.
 *
 * @param view The item’s view. If nil the view is not displayed.
 *
 * @return A newly created bar button item.
 */

+ (instancetype)buttonItemWithView:(UIView*)view;

@end