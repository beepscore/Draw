//
//  DrawView.m
//  Draw
//
//  Created by Steve Baker on 3/18/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "DrawView.h"


@implementation DrawView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
    [super dealloc];
}


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
