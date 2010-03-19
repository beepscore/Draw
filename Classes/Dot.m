//
//  Dot.m
//  Draw
//
//  Created by Steve Baker on 3/18/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "Dot.h"


@implementation Dot

#pragma mark properties
@synthesize x;
@synthesize y;
@synthesize color;


#pragma mark memory management methods
- (void)dealloc {
    [color release], color = nil;    
    [super dealloc];
}

@end
