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
	// Reset the button states to enabled
    groceryButton.enabled = true;
    mailButton.enabled = true;
    drycleaningButton.enabled = true;
    calcButton.enabled = true;
    
	// Reset the Property Values, Labels, and Steppers
    propertyValLabelA.text = @"0";
    propertyValLabelB.text = @"0";
    propertyStepperA.value = 0;
    propertyStepperB.value = 0;
    propertyStepperA.hidden = false;
    propertyStepperB.hidden = false;
    errandTimeLabel.text = @"";
	
	UIButton *errandButton = (UIButton*)sender;
    if (errandButton != nil) {
    	// Check which errand type is being selected
    	if (errandButton.tag == 0) {
            // Dry Cleaning Button was pressed
            propertyDescLabelA.text = @"Items to Pick Up:";
            propertyDescLabelB.text = @"Items to Drop Off:";
        } else if (errandButton.tag == 1) {
        	// Grocery Button was pressed
            propertyDescLabelA.text = @"Items on Grocery List:";
            propertyDescLabelB.text = @"";
            propertyValLabelB.text = @"";
            propertyStepperB.hidden = true;
        } else if (errandButton.tag == 2) {
        	// Post Office Buttton was pressed
            propertyDescLabelA.text = @"Packages to Pick Up:";
            propertyDescLabelB.text = @"Packages to Send:";
        }
        errandButton.enabled = false;
        calcButton.tag = errandButton.tag;
    }
}

-(IBAction)onStepperChange:(id)sender
{
	UIStepper *stepper = (UIStepper*)sender;
    if (stepper != nil) {
    	int stepperValue = stepper.value;
    	// Check which stepper is being changed and update label to it's left
        if (stepper.tag == 0) {
        	propertyValLabelA.text = [NSString stringWithFormat:@"%d", stepperValue];
        } else if (stepper.tag == 1) {
        	propertyValLabelB.text = [NSString stringWithFormat:@"%d", stepperValue];
        }
    }
    // Clear the calculated errand time label
    errandTimeLabel.text = @"";
}

-(IBAction)onCalculateClick:(id)sender
{
	// grab values from steppers
    int propertyA = propertyStepperA.value;
    int propertyB = propertyStepperB.value;
    int errandTime = 0;
    
    // determine which errand needs to be created and calculated
	if (calcButton.tag == 0) {
    	// Dry Cleaning Errand
    	drycleaningErrand *battisonsTrip = (drycleaningErrand*)[errandFactory createErrand:DRYCLEANING];
        [battisonsTrip setItemsToPickUp:propertyA];
        [battisonsTrip setItemsToDropOff:propertyB];
        [battisonsTrip calculateErrandTime];
    	errandTime = [battisonsTrip errandTimeMinutes];
    } else if (calcButton.tag == 1) {
    	// Grocery Errand
        groceryErrand *bigYTrip = (groceryErrand*)[errandFactory createErrand:GROCERY];
        [bigYTrip setGroceryListItems:propertyA];
        [bigYTrip calculateErrandTime];
        errandTime = [bigYTrip errandTimeMinutes];
    } else if (calcButton.tag == 2) {
    	// Post Office Errand
    	mailErrand *postOfficeTrip = (mailErrand*)[errandFactory createErrand:MAIL];
        [postOfficeTrip setPackagesToPickUp:propertyA];
        [postOfficeTrip setPackagesToSend:propertyB];
        [postOfficeTrip calculateErrandTime];
        errandTime = [postOfficeTrip errandTimeMinutes];
    }
    // Change Label to Display Estimated Errand Time
    errandTimeLabel.text = [NSString stringWithFormat:@"This errand will take %d minutes.", errandTime];
}

@end
