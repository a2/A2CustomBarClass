//
//  CBCustomTabBarControllerUnitTests.m
//  A2CustomBarClass
//
//  Created by Alexsander Akers on 11/11/11.
//  Copyright (c) 2011 Pandamonia LLC. All rights reserved.
//

#import "CBCustomTabBarControllerUnitTests.h"

@implementation CBCustomTabBarControllerUnitTests

- (void) testCustomTabBarController
{
	CBTabBarController *cbtbc = [[CBTabBarController alloc] initWithTabBarClass: Nil];
	TestObjClass(cbtbc, CBTabBarController);
	TestObjClass([cbtbc tabBar], UITabBar);
}
- (void) testCustomTabBarControllerWithCustomTabBarClass
{
	CBTabBarController *cbtbc = [[CBTabBarController alloc] initWithTabBarClass: [CBTabBar class]];
	TestObjClass(cbtbc, CBTabBarController);
	TestObjClass([cbtbc tabBar], CBTabBar);
}

@end
