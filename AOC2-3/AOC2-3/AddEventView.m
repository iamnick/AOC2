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
    if (delegate != nil)
    {
    	// Capture event name + date, call delegate method
    	[delegate saveEvent:eventNameTextField.text eventDate:eventDatePicker.date];
    }
	[self dismissViewControllerAnimated:true completion:^(){}];
}

-(IBAction)onCloseKeyboardClick:(id)sender
{
	[eventNameTextField resignFirstResponder];
}
@end
