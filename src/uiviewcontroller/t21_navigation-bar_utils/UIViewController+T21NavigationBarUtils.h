//
//  UIViewController+T21NavigationBarUtils.h
//  T21Categories/UIViewController/NavigationBarUtils
//
//  Created by David Arrufat on 13/05/15.
//  Copyright (c) 2015 Tempos 21. All rights reserved.
//

@interface UIViewController (T21NavigationBarUtils)

/**
 * @discussion Change the bar button item text to use when a back button is needed on the navigation bar.
 *
 * When this navigation item is immediately below the top item in the stack, the navigation controller derives the back button for the navigation bar from this navigation item. When this property is nil, the navigation item uses the value in its title property to create an appropriate back button. If you want to specify a custom image or title for the back button, you can assign a custom bar button item (with your custom title or image) to this property instead. When configuring your bar button item, do not assign a custom view to it; the navigation item ignores custom views in the back bar button anyway.
 *
 * @warning If the title of your back button is too long to fit in the available space on the navigation bar, the navigation bar may substitute the string “Back” in place of the button’s original title. The navigation bar does this only if the back button is provided by the previous view controller. If the new top-level view controller has a custom left bar button item—an object in the leftBarButtonItems or leftBarButtonItem property of its navigation item—the navigation bar does not change the button title.
 *
 * @param text The back button item’s title. If nil a title is not displayed.
 *
 */

- (void)setBackButtonWithText:(NSString *)text;

/**
 * @discussion Replace the bar button item text with to use when a back button is needed on the navigation bar with the given image.
 *
 * When this navigation item is immediately below the top item in the stack, the navigation controller derives the back button for the navigation bar from this navigation item. When this property is nil, the navigation item uses the value in its title property to create an appropriate back button. If you want to specify a custom image or title for the back button, you can assign a custom bar button item (with your custom title or image) to this property instead. When configuring your bar button item, do not assign a custom view to it; the navigation item ignores custom views in the back bar button anyway.
 *
 * @warning If the image of your back button is too big to fit in the available space on the navigation bar, the navigation bar may substitute the text “Back” in place of the button’s original image. The navigation bar does this only if the back button is provided by the previous view controller. If the new top-level view controller has a custom left bar button item—an object in the leftBarButtonItems or leftBarButtonItem property of its navigation item—the navigation bar does not change the button title.
 *
 * @param image The back button item’s image. If nil a image is not displayed.
 *
 */

- (void)setBackButtonWithImage:(UIImage *)image;

/**
 * @discussion Create and add a bar button item with the the given button into the array of custom bar button items to display on the left side of the navigation bar when the receiver is the top navigation item.
 *
 * @param button A button representing the item
 * @param backButton If YES, the back button item is visible, otherwise is hidden.
 */

- (void)addLeftBarButton:(UIButton *)button backButton:(BOOL)backButton;

/**
 * @discussion Add the given bar button item into the array of custom bar button items to display on the left side of the navigation bar when the receiver is the top navigation item.
 *
 * @param buttonItem A bar button item to add into the leftBarButtonItems array
 * @param backButton If YES, the back button item is visible, otherwise is hidden.
 */

- (void)addLeftBarButtonItem:(UIBarButtonItem *)buttonItem backButton:(BOOL)backButton;

/**
 * @discussion Create and add a bar button item with the the given button into the array of custom bar button items to display on the right side of the navigation bar when the receiver is the top navigation item.
 *
 * @param button A button representing the item
 */

- (void)addRightBarButton:(UIButton *)button;

/**
 * @discussion Add the given bar button item into the array of custom bar button items to display on the right side of the navigation bar when the receiver is the top navigation item.
 *
 * @param buttonItem A bar button item to add into the rightBarButtonItems array
 */

- (void)addRightBarButtonItem:(UIBarButtonItem *)buttonItem;

@end
