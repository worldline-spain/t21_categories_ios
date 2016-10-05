//
//  AppDelegate.h
//  BaseProject
//
//  Created by Eloi Guzmán on 24/02/14.
//  Copyright (c) 2014 Tempos21. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController * navController;

BOOL isRunningTests(void);

@end
