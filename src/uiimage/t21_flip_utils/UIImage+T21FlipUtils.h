//
//  UIImage+T21FlipUtils.h
//  T21Categories/UIImage/FlipUtils
//
//  Created by David Arrufat on 23/06/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

@interface UIImage (T21FlipUtils)

/**
 * @discussion Returns the image object associated with the specified filename and orientation.
 *
 * @param name The name of the file. If this is the first time the image is being loaded, the method looks for an image with the specified name in the application’s main bundle.
 * @param orientation The orientation of the image data. You can use this parameter to specify any rotation factors applied to the image.
 *
 * @return A new image object
 */

+ (UIImage*) imageFlippedWithName:(NSString*)name orientation:(UIImageOrientation)orientation;

/**
 * @discussion Creates and returns an image object with the specified orientation.
 *
 * @param orientation The orientation of the image data. You can use this parameter to specify any rotation factors applied to the image.
 *
 * @return A new image object
 */

- (UIImage*) flipImageWithOrientation:(UIImageOrientation)orientation;

@end
