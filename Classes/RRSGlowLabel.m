//
//  RRSGlowLabel.m
//  TextGlowDemo
//
//  Created by Andrew on 28/04/2010.
//  Red Robot Studios 2010.
//

#import "RRSGlowLabel.h"


@interface RRSGlowLabel()
- (void)initialize;
@end

@implementation RRSGlowLabel

@synthesize glowColor, glowOffset, glowAmount;

- (void)setGlowColor:(UIColor *)newGlowColor
{
    if (newGlowColor != glowColor) {
        [glowColor release];
        CGColorRelease(glowColorRef);

        glowColor = [newGlowColor retain];
        glowColorRef = CGColorCreate(colorSpaceRef, CGColorGetComponents(glowColor.CGColor));
    }
}

- (void)initialize {
    colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    
    self.glowOffset = CGSizeMake(0.0, 0.0);
    self.glowAmount = 0.0;
    self.glowColor = [UIColor clearColor];
}

- (void)awakeFromNib {
    [self initialize];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self != nil) {
        [self initialize];
    }
    return self;
}

- (void)drawTextInRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    CGContextSetShadow(context, self.glowOffset, self.glowAmount);
    CGContextSetShadowWithColor(context, self.glowOffset, self.glowAmount, glowColorRef);
    
    [super drawTextInRect:rect];
    
    CGContextRestoreGState(context);
}

- (void)dealloc {
    CGColorRelease(glowColorRef);
    CGColorSpaceRelease(colorSpaceRef);
    [glowColor release];
    [super dealloc];
}

@end
