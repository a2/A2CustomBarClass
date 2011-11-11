//
//  CBCustomNavigationControllerUnitTests.m
//  A2CustomBarClass
//
//  Created by Alexsander Akers on 11/11/11.
//  Copyright (c) 2011 Pandamonia LLC. All rights reserved.
//

#import "CBCustomNavigationControllerUnitTests.h"

@implementation CBCustomNavigationControllerUnitTests

- (void) testCustomNavigationController
{
	CBViewController *vc = [[CBViewController alloc] init];
	CBNavigationController *cbnc = [[CBNavigationController alloc] initWithRootViewController: vc navigationBarClass: Nil toolbarClass: Nil];
	TestObjClass(cbnc, CBNavigationController);
	TestObjClass([cbnc toolbar], UIToolbar);
	TestObjClass([cbnc navigationBar], UINavigationBar);
}
- (void) testCustomNavigationControllerWithCustomNavigationBarClass
{
	CBViewController *vc = [[CBViewController alloc] init];
	CBNavigationController *cbnc = [[CBNavigationController alloc] initWithRootViewController: vc navigationBarClass: [CBNavigationBar class] toolbarClass: Nil];
	TestObjClass(cbnc, CBNavigationController);
	TestObjClass([cbnc toolbar], UIToolbar);
	TestObjClass([cbnc navigationBar], CBNavigationBar);
}
- (void) testCustomNavigationControllerWithCustomToolbarBarClass
{
	CBViewController *vc = [[CBViewController alloc] init];
	CBNavigationController *cbnc = [[CBNavigationController alloc] initWithRootViewController: vc navigationBarClass: Nil toolbarClass: [CBToolbar class]];
	TestObjClass(cbnc, CBNavigationController);
	TestObjClass([cbnc toolbar], CBToolbar);
	TestObjClass([cbnc navigationBar], UINavigationBar);
}
- (void) testCustomNavigationControllerWithCustomBarClasses
{
	CBViewController *vc = [[CBViewController alloc] init];
	CBNavigationController *cbnc = [[CBNavigationController alloc] initWithRootViewController: vc navigationBarClass: [CBNavigationBar class] toolbarClass: [CBToolbar class]];
	TestObjClass(cbnc, CBNavigationController);
	TestObjClass([cbnc toolbar], CBToolbar);
	TestObjClass([cbnc navigationBar], CBNavigationBar);
}

@end
