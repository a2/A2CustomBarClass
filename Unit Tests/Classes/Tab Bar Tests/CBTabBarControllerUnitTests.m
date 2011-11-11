//
//  CBTabBarControllerUnitTests.m
//  A2CustomBarClass
//
//  Created by Alexsander Akers on 11/11/11.
//  Copyright (c) 2011 Pandamonia LLC. All rights reserved.
//

#import "CBTabBarControllerUnitTests.h"

@implementation CBTabBarControllerUnitTests

- (void) testTabBarController
{
	UITabBarController *cbtbc = [[UITabBarController alloc] initWithTabBarClass: Nil];
	TestObjClass(cbtbc, UITabBarController);
	TestObjClass([cbtbc tabBar], UITabBar);
}
- (void) testTabBarControllerWithCustomTabBarClass
{
	UITabBarController *cbtbc = [[UITabBarController alloc] initWithTabBarClass: [CBTabBar class]];
	TestObjClass(cbtbc, UITabBarController);
	TestObjClass([cbtbc tabBar], CBTabBar);
}

@end
