//
//  NSDateFormatter+T21CommonUtils.h
//  T21Categories/NSDateFormatter/CommonUtils
//
//  Created by David Arrufat on 17/02/14.
//  Copyright (c) 2014 Tempos 21. All rights reserved.
//

@interface NSDateFormatter (T21CommonUtils)

/**
 * @discussion Returns a localized date formatter for the current device locale.
 *
 * @return A new date formatter object
 */

- (id) initWithCurrentLocale;

@end
