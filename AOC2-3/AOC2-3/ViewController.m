//
//  ViewController.m
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"
#import "AddEventView.h"
#import "dataHolder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	[dataHolder CreateInstance];
    
    defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"allEvents"] != nil) {
    	// load events
        eventTextView.text = [defaults objectForKey:@"allEvents"];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
	// check the singleton for event data, add to textview if there is new data
    if ([[dataHolder GetInstance] newEvent] == TRUE) {
        // Capture current text in textview
    	NSMutableString *textViewText = [[NSMutableString alloc] initWithString:eventTextView.text];
        
    	// Add event name and date to existing text from the text view
		[textViewText appendString:[[dataHolder GetInstance] createEventString]];
    
    	// Re-add updated text to the text view
    	eventTextView.text = textViewText;
        
        [[dataHolder GetInstance] setNewEvent:FALSE];
    }
    
    // add swipe gesture to add event label
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [addEventLabel addGestureRecognizer:rightSwipe];
    
}

-(IBAction)onSaveEventsClick:(id)sender
{
    NSString *allEvents = [[NSString alloc] initWithString:eventTextView.text];
    [defaults setObject:allEvents forKey:@"allEvents"];
    UIAlertView *dataSavedAlert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"Event List Saved" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if (dataSavedAlert != nil) {
        	[dataSavedAlert show];
        }

}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
	AddEventView *addEventView = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
    if (addEventView != nil) {
        [self presentViewController:addEventView animated:true completion:^(){}];
    }
}

@end
