//
//  DrawView.m
//  Draw
//
//  Created by Steve Baker on 3/18/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "DrawView.h"
#import "Dot.h"


@implementation DrawView

@synthesize dots;

- (NSMutableArray *)dots {
    if(nil == dots) {
        self.dots = [NSMutableArray array];
    }
    return dots;
}


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // cycle dot color
    NSInteger index = 0;
    NSInteger dotsInCycle = 100;
    for(Dot *dot in self.dots) {
        index++;
        dot.color = [UIColor colorWithHue:((index % dotsInCycle)/(float)dotsInCycle)
                               saturation:0.5
                               brightness:1.0
                                    alpha:1.0];
        CGContextSetFillColorWithColor(ctx, [dot.color CGColor]);
        CGContextAddArc(ctx, dot.x, dot.y, 5.0f, 0.0f, 2.0f * M_PI, YES);
        CGContextFillPath(ctx);
    }
}


#pragma mark memory management methods
- (void)dealloc {
    [dots release], dots = nil;
    [super dealloc];
}


#pragma mark UI
- (void)addDotForTouches:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    Dot *dot = [[[Dot alloc] init] autorelease];
    dot.x = location.x;
    dot.y = location.y;
    [self.dots addObject:dot];
    [self setNeedsDisplay];    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self addDotForTouches:touches withEvent:event];
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [self addDotForTouches:touches withEvent:event];
}

@end
