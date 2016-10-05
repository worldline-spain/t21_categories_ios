//
//  UIImage+T21FlipUtils.m
//  T21Categories/UIImage/FlipUtils
//
//  Created by David Arrufat on 23/06/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

#import "UIImage+T21FlipUtils.h"

@implementation UIImage (T21FlipUtils)

- (UIImage*) flipImageWithOrientation:(UIImageOrientation)orientation
{
    return [UIImage imageWithCGImage:self.CGImage
                               scale:self.scale
                         orientation:orientation];
}

+ (UIImage*) imageFlippedWithName:(NSString*)name orientation:(UIImageOrientation)orientation
{
    UIImage *imageFlipped = nil;
    if (name) {
        UIImage *sourceImage = [UIImage imageNamed:name];
        imageFlipped = [sourceImage flipImageWithOrientation:orientation];
    }
    return imageFlipped;
}

@end
