//
//  TextGlowDemoAppDelegate.h
//  TextGlowDemo
//
//  Created by Andrew on 28/04/2010.
//  Red Robot Studios 2010.
//

#import <UIKit/UIKit.h>


@class TextGlowDemoViewController;

@interface TextGlowDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TextGlowDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TextGlowDemoViewController *viewController;

@end

