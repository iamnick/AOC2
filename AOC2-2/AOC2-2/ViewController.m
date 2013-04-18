//
//  ViewController.m
//  AOC2-2
//
//  Created by Nick Stelzer on 4/17/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onErrandClick:(id)sender
{
	// Reset the Property Values, Labels, and Steppers
    propertyValLabelA.text = @"0";
    propertyValLabelB.text = @"0";
    propertyStepperA.value = 0;
    propertyStepperB.value = 0;
    propertyStepperB.hidden = false;
	
	UIButton *errandButton = (UIButton*)sender;
    if (errandButton != nil) {
    	// Check which errand type is being selected
    	if (errandButton.tag == 0) {
        	// Grocery Button was pressed
            NSLog(@"Grocery");
            propertyDescLabelA.text = @"Items on Grocery List:";
            propertyDescLabelB.text = @"";
            propertyValLabelB.text = @"";
            propertyStepperB.hidden = true;
        } else if (errandButton.tag == 1) {
        	// Post Office Buttton was pressed
            NSLog(@"Post Office");
            propertyDescLabelA.text = @"Packages to Pick Up:";
            propertyDescLabelB.text = @"Packages to Drop Off:";
        } else if (errandButton.tag == 2) {
        	// Dry Cleaning Button was pressed
            propertyDescLabelA.text = @"Items to Pick Up:";
            propertyDescLabelB.text = @"Items to Drop Off:";
            NSLog(@"Dry Cleaning");
        }
        
    }
}

-(IBAction)onStepperChange:(id)sender
{
	UIStepper *stepper = (UIStepper*)sender;
    if (stepper != nil) {
    	int stepperValue = stepper.value;
    	// Check which stepper is being changed
        if (stepper.tag == 0) {
        	propertyValLabelA.text = [NSString stringWithFormat:@"%d", stepperValue];
        } else if (stepper.tag == 1) {
        	propertyValLabelB.text = [NSString stringWithFormat:@"%d", stepperValue];
        }
    }
}

@end
