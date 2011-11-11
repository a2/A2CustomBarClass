//
//  A2CustomBarClass.m
//
//  Created by Alexsander Akers on 10/18/11.
//  Copyright (c) 2011 Pandamonia LLC. All rights reserved.
//

#import "A2CustomBarClass.h"

@implementation UINavigationController (A2CustomBarClass)

- (id) initWithRootViewController: (UIViewController *) rootViewController navigationBarClass: (Class) navigationBarClass
{
	return [self initWithRootViewController: rootViewController navigationBarClass: navigationBarClass toolbarClass: Nil];
}
- (id) initWithRootViewController: (UIViewController *) rootViewController navigationBarClass: (Class) navigationBarClass toolbarClass: (Class) toolbarClass
{
	if (!(self = [self initWithRootViewController: rootViewController]))
		return (self = nil);
	
	[self view];
	[self navigationBar];
	[self toolbar];
	
	NSData *data = [NSKeyedArchiver archivedDataWithRootObject: self];
	NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: data];
	
	if (navigationBarClass && navigationBarClass != [UINavigationBar class])
	{
		[unarchiver setClass: navigationBarClass forClassName: NSStringFromClass([UINavigationBar class])];
	}
	
	if (toolbarClass && toolbarClass != [UIToolbar class])
	{
		[unarchiver setClass: toolbarClass forClassName: NSStringFromClass([UIToolbar class])];
	}
	
	self = [unarchiver decodeObjectForKey: @"root"];
	[unarchiver finishDecoding];
	
	return self;
}

@end

@implementation UITabBarController (A2CustomBarClass)

- (id) initWithTabBarClass: (Class) tabBarClass
{
	if (!(self = [self initWithNibName: nil bundle: nil]))
		return (self = nil);
	
	[self view];
	[self tabBar];

	NSData *data = [NSKeyedArchiver archivedDataWithRootObject: self];
	NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: data];
	
	if (tabBarClass && tabBarClass != [UITabBar class])
	{
		[unarchiver setClass: tabBarClass forClassName: NSStringFromClass([UITabBar class])];
	}
	
	self = [unarchiver decodeObjectForKey: @"root"];
	[unarchiver finishDecoding];
	
	return self;
}

@end
