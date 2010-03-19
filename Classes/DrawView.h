//
//  DrawView.h
//  Draw
//
//  Created by Steve Baker on 3/18/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DrawView : UIView {
    NSMutableArray *dots;
}

@property(nonatomic, retain) NSMutableArray *dots;

@end
