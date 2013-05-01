//
//  AddEventView.m
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "AddEventView.h"
#import "dataHolder.h"

@interface AddEventView ()

@end

@implementation AddEventView

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
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
	// Sets date picker minimum date to the current date
	NSDate *currentDate = [NSDate date];
	eventDatePicker.minimumDate = currentDate;

	// add swipe gesture to save & close label
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [closeLabel addGestureRecognizer:leftSwipe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
	// Checks to make sure something is in the event name textfield
	if ([eventNameTextField.text length] > 0) {
        // Capture event name + date, store in singleton
        [[dataHolder GetInstance] setEventName:eventNameTextField.text];
        [[dataHolder GetInstance] setEventDate:eventDatePicker.date];
        [[dataHolder GetInstance] setNewEvent:TRUE];
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
