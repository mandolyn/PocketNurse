//
//  AppDelegate.h
//  Pocket Nurse 2
//
//  Created by Amanda Fischer on 6/29/13.
//  Copyright (c) 2013 Amanda Fischer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    IBOutlet UIWindow *window;
    IBOutlet SwitchViewController *switchViewController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SwitchViewController *switchViewController;

@end
