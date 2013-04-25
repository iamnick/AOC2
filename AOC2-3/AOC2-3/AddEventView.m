//
//  AddEventView.m
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "AddEventView.h"

@interface AddEventView ()

@end

@implementation AddEventView

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        delegate = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
	// Sets date picker minimum date to the current date
	NSDate *currentDate = [NSDate date];
	eventDatePicker.minimumDate = currentDate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSaveEventClick:(id)sender
{
	// Checks to make sure something is in the event name textfield
	if ([eventNameTextField.text length] > 0) {
        if (delegate != nil)
        {
            // Capture event name + date, call delegate method
            [delegate saveEvent:eventNameTextField.text eventDate:eventDatePicker.date];
        }
        [self dismissViewControllerAnimated:true completion:^(){}];
	} else {
    	// Display alert if event name textfield is empty
        UIAlertView *emptyEventNameAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter an event name." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if (emptyEventNameAlert != nil) {
        	[emptyEventNameAlert show];
        }
    }
}

-(IBAction)onCloseKeyboardClick:(id)sender
{
	[eventNameTextField resignFirstResponder];
}
@end
