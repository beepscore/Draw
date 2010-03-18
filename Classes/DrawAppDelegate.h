//
//  DrawAppDelegate.h
//  Draw
//
//  Created by Steve Baker on 3/18/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DrawViewController;

@interface DrawAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DrawViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DrawViewController *viewController;

@end

