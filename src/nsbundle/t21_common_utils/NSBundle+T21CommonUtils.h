//
//  NSBundle+T21CommonUtils.h
//  T21Categories/NSBundle/CommonUtils
//
//  Created by David Arrufat on 27/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

@interface NSBundle (T21CommonUtils)

/**
 * @return The app name from CFBundleDisplayName key defined into the Info.plist.
 */
+ (NSString*) getAppName;

/**
 * @return The app version from CFBundleVersion key defined into the Info.plist.
 */
+ (NSString*) getAppVersion;

@end
