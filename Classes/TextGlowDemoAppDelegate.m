//
//  TextGlowDemoAppDelegate.m
//  TextGlowDemo
//
//  Created by Andrew on 28/04/2010.
//  Red Robot Studios 2010.
//

#import "TextGlowDemoAppDelegate.h"
#import "TextGlowDemoViewController.h"


@implementation TextGlowDemoAppDelegate

@synthesize window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	return YES;
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}

@end
