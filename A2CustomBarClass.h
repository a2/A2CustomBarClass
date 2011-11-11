//
//  A2CustomBarClass.h
//
//  Created by Alexsander Akers on 10/18/11.
//  Copyright (c) 2011 Pandamonia LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (A2CustomBarClass)

- (id) initWithRootViewController: (UIViewController *) rootViewController navigationBarClass: (Class) navigationBarClass;
- (id) initWithRootViewController: (UIViewController *) rootViewController navigationBarClass: (Class) navigationBarClass toolbarClass: (Class) toolbarClass;

@end

@interface UITabBarController (A2CustomBarClass)

- (id) initWithTabBarClass: (Class) tabBarClass;

@end
