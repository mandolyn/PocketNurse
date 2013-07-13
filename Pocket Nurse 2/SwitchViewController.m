//
//  SwitchViewController.m
//  Pocket Nurse 2
//
//  Created by Amanda Fischer on 6/30/13.
//  Copyright (c) 2013 Amanda Fischer. All rights reserved.
//

#import "SwitchViewController.h"
#import "ViewController.h"
#import "HeadViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController
@synthesize headViewController;
@synthesize mainViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    ViewController *mainController = [[ViewController alloc]
                                          initWithNibName:@"Patient Information" bundle:nil];
    self.mainViewController = mainController;
    [self.view insertSubview:mainController.view atIndex:0];
}

- (IBAction)switchViews:(id)sender
{
        if(self.headViewController == nil)
        {
            HeadViewController *headController = [[HeadViewController alloc]
                                                  initWithNibName:@"Head Assessment" bundle:nil];
            self.headViewController = headController;
        }
    
        if(self.mainViewController.view.superview == nil)
        {
            [headViewController.view removeFromSuperview];
            [self.view insertSubview:mainViewController.view atIndex:0];
        }
        else{
            [mainViewController.view removeFromSuperview];
            [self.view insertSubview:headViewController.view atIndex:0];
        }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
