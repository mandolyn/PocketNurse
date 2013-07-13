//
//  ViewController.h
//  Pocket Nurse 2
//
//  Created by Amanda Fischer on 6/29/13.
//  Copyright (c) 2013 Amanda Fischer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//General PT Information Answers
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *ageField;
@property (weak, nonatomic) IBOutlet UITextField *heightField;
@property (weak, nonatomic) IBOutlet UITextField *weightField;
@property (weak, nonatomic) IBOutlet UITextField *bmiField;

//General Survey Answers
@property (weak, nonatomic) IBOutlet UISegmentedControl *appearsAge;
@property (weak, nonatomic) IBOutlet UISegmentedControl *properWeight;
@property (weak, nonatomic) IBOutlet UISegmentedControl *normalGait;
@property (weak, nonatomic) IBOutlet UISegmentedControl *appropriateMood;
@property (weak, nonatomic) IBOutlet UISegmentedControl *speechIntactAnswer;
@property (weak, nonatomic) IBOutlet UISegmentedControl *groomedAnswer;

//Hidden Views for Abnormalities
@property (weak, nonatomic) IBOutlet UIView *moodAbnormalView;
@property (weak, nonatomic) IBOutlet UITextField *moodAbnormalText;
@property (weak, nonatomic) IBOutlet UITextField *speechAbnormalText;
@property (weak, nonatomic) IBOutlet UIView *speechAbnormalView;
@property (weak, nonatomic) IBOutlet UITextField *groomedAbnormalText;
@property (weak, nonatomic) IBOutlet UIView *groomedAbnormalView;

//Vitals Answers
@property (weak, nonatomic) IBOutlet UITextField *bloodPressureField;
@property (weak, nonatomic) IBOutlet UITextField *temperatureField;
@property (weak, nonatomic) IBOutlet UITextField *pulseField;
@property (weak, nonatomic) IBOutlet UITextField *respirationField;
@property (weak, nonatomic) IBOutlet UITextField *painField;

@property (weak, nonatomic) IBOutlet UIButton *startAssessment;

//@property(nonatomic, retain) UIImage *offImage;
//@property(nonatomic, retain) UIImage *onImage;
- (IBAction)backgroundClicked:(id)sender;
- (IBAction)doneClicked:(id)sender;
- (IBAction)inappropriateAttribute:(id)sender;
- (IBAction)confirmComplete:(id)sender;
@end
