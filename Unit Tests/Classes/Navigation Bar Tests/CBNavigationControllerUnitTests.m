//
//  CBNavigationControllerUnitTests.m
//  A2CustomBarClass
//
//  Created by Alexsander Akers on 11/11/11.
//  Copyright (c) 2011 Pandamonia LLC. All rights reserved.
//

#import "CBNavigationControllerUnitTests.h"

@implementation CBNavigationControllerUnitTests

- (void) testNavigationController
{
	CBViewController *vc = [[CBViewController alloc] init];
	UINavigationController *cbnc = [[UINavigationController alloc] initWithRootViewController: vc navigationBarClass: Nil toolbarClass: Nil];
	TestObjClass(cbnc, UINavigationController);
	TestObjClass([cbnc toolbar], UIToolbar);
	TestObjClass([cbnc navigationBar], UINavigationBar);
}
- (void) testNavigationControllerWithCustomNavigationBarClass
{
	CBViewController *vc = [[CBViewController alloc] init];
	UINavigationController *cbnc = [[UINavigationController alloc] initWithRootViewController: vc navigationBarClass: [CBNavigationBar class] toolbarClass: Nil];
	TestObjClass(cbnc, UINavigationController);
	TestObjClass([cbnc toolbar], UIToolbar);
	TestObjClass([cbnc navigationBar], CBNavigationBar);
}
- (void) testNavigationControllerWithCustomToolbarBarClass
{
	CBViewController *vc = [[CBViewController alloc] init];
	UINavigationController *cbnc = [[UINavigationController alloc] initWithRootViewController: vc navigationBarClass: Nil toolbarClass: [CBToolbar class]];
	TestObjClass(cbnc, UINavigationController);
	TestObjClass([cbnc toolbar], CBToolbar);
	TestObjClass([cbnc navigationBar], UINavigationBar);
}
- (void) testNavigationControllerWithCustomBarClasses
{
	CBViewController *vc = [[CBViewController alloc] init];
	UINavigationController *cbnc = [[UINavigationController alloc] initWithRootViewController: vc navigationBarClass: [CBNavigationBar class] toolbarClass: [CBToolbar class]];
	TestObjClass(cbnc, UINavigationController);
	TestObjClass([cbnc toolbar], CBToolbar);
	TestObjClass([cbnc navigationBar], CBNavigationBar);
}

@end
