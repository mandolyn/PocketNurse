//
//  ViewController.m
//  Pocket Nurse 2
//
//  Created by Amanda Fischer on 6/29/13.
//  Copyright (c) 2013 Amanda Fischer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameField;
@synthesize ageField;
@synthesize heightField;
@synthesize weightField;
@synthesize bmiField;

@synthesize appearsAge;
@synthesize properWeight;
@synthesize normalGait;
@synthesize appropriateMood;
@synthesize speechIntactAnswer;
@synthesize groomedAnswer;

@synthesize moodAbnormalView;
@synthesize moodAbnormalText;
@synthesize speechAbnormalView;
@synthesize speechAbnormalText;
@synthesize groomedAbnormalText;
@synthesize groomedAbnormalView;

@synthesize bloodPressureField;
@synthesize temperatureField;
@synthesize pulseField;
@synthesize respirationField;
@synthesize painField;

@synthesize startAssessment;
//@synthesize onImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //onImage = [UIImage imageNamed:@"lg_yes.png"];
    //appearsWeightSwitch.onImage = onImage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgroundClicked:(id)sender
{
    [nameField resignFirstResponder];
    [ageField resignFirstResponder];
    [heightField resignFirstResponder];
    [weightField resignFirstResponder];
    [bmiField resignFirstResponder];
    [moodAbnormalText resignFirstResponder];
    [speechAbnormalText resignFirstResponder];
    [groomedAbnormalText resignFirstResponder];
    [bloodPressureField resignFirstResponder];
    [temperatureField resignFirstResponder];
    [pulseField resignFirstResponder];
    [respirationField resignFirstResponder];
    [painField resignFirstResponder];
}

- (IBAction)doneClicked:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)inappropriateAttribute:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger answer = segmentedControl.selectedSegmentIndex;
    
    NSLog(@"Sender tag: %d", segmentedControl.tag);
    NSLog(@"Answer index: %d", answer);
    
    if(segmentedControl.tag == 0)
    {
        if(answer == 1)
        {
            moodAbnormalView.hidden = false;
        }
        else
        {
            moodAbnormalView.hidden = true;
        }
    }
    else if(segmentedControl.tag == 1)
    {
        if(answer == 1)
        {
            speechAbnormalView.hidden = false;
        }
        else{
            speechAbnormalView.hidden = true;
        }
    }
    else
    {
        if(answer == 1)
        {
            groomedAbnormalView.hidden = false;
        }
        else{
            groomedAbnormalView.hidden = true;
        }
    }
}

- (IBAction)confirmComplete:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?"
                                  delegate:self
                                  cancelButtonTitle:nil
                                  destructiveButtonTitle:@"Yes, I'm done."
                                  otherButtonTitles: @"No, I'm not done.", nil];
    
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet
didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == [actionSheet destructiveButtonIndex])
    {
        NSString *msg = @"Not sure what is going on.";
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Something was done." message:msg delegate:self cancelButtonTitle:@"Phew!" otherButtonTitles: nil];
        [alert show];
    }
}

@end
