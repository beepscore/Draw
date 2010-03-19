//
//  Dot.h
//  Draw
//
//  Created by Steve Baker on 3/18/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Dot : NSObject {
    CGFloat x;
    CGFloat y;
    UIColor* color;
}
#pragma mark properties
@property(nonatomic,assign)float x;
@property(nonatomic,assign)float y;
@property(nonatomic,retain)UIColor *color;

@end
