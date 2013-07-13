//
//  SwitchViewController.h
//  Pocket Nurse 2
//
//  Created by Amanda Fischer on 6/30/13.
//  Copyright (c) 2013 Amanda Fischer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class HeadViewController;

@interface SwitchViewController : UIViewController
{
    ViewController *mainViewController;
    HeadViewController *headViewController;
}

@property (retain, nonatomic) ViewController *mainViewController;
@property (retain, nonatomic) HeadViewController *headViewController;

- (IBAction)switchViews:(id)sender;

@end
