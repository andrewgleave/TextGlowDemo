//
//  TextGlowDemoViewController.m
//  TextGlowDemo
//
//  Created by Andrew on 28/04/2010.
//  Red Robot Studios 2010.
//

#import "TextGlowDemoViewController.h"


@implementation TextGlowDemoViewController

@synthesize label, glowSlider;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Create a couple of colours for the background gradient
    UIColor *colorOne = [UIColor colorWithRed:0.0 green:0.125 blue:0.18 alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:0.0 green:0.00 blue:0.05 alpha:1.0];
    
    //Create the gradient and add it to our view's root layer
    CAGradientLayer *gradientLayer = [[[CAGradientLayer alloc] init] autorelease];
    gradientLayer.frame = CGRectMake(0.0, 0.0, 320.0, 480.0);
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)colorOne.CGColor, (id)colorTwo.CGColor, nil]];
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
    
    //Set the label properties and glow params
    self.label.textColor = [UIColor colorWithRed:0.20 green:0.70 blue:1.0 alpha:1.0];
    self.label.glowColor = self.label.textColor;
    self.label.glowOffset = CGSizeMake(0.0, 0.0);
    self.label.glowAmount = 30.0;
}

- (IBAction)adjustGlowAmount:(id)sender {
    self.label.glowAmount = self.glowSlider.value;
    [self.label setNeedsDisplay];
}

-(void)viewDidUnload {
    [super viewDidUnload];
    self.glowSlider = nil;
    self.label = nil;
}

- (void)dealloc {
    [label release];
    [glowSlider release];
    [super dealloc];
}

@end
