//
//  UIApplication+T21CommonUtils.h
//  T21Categories/UIApplication/CommonUtils
//
//  Created by David Arrufat on 19/05/15.
//  Copyright (c) 2015 Tempos21. All rights reserved.
//

@interface UIApplication (T21CommonUtils)

/**
 * @discussion Returns whether an app can open a given URL resource.
 *
 * This method guarantees that that if openURL: is called, another app will be launched to handle it. It does not guarantee that the full URL is valid.
 *
 * @param url A URL object that identifies a given resource. The URL’s scheme—possibly a custom scheme—identifies which app can handle the URL.
 *
 * @return NO if no app is available that will accept the URL; otherwise, returns YES.
 */

+ (BOOL) canOpenURL:(NSURL*)url;

@end