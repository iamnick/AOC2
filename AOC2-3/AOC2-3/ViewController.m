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
	// check the singleton for event data
    if ([[dataHolder GetInstance] newEvent] == TRUE) {
        // Capture current text in textview
    	NSMutableString *textViewText = [[NSMutableString alloc] initWithString:eventTextView.text];
        
    	// Add event name and date to existing text from the text view
		[textViewText appendString:[[dataHolder GetInstance] createEventString]];
    
    	// Re-add updated text to the text view
    	eventTextView.text = textViewText;
        
        [[dataHolder GetInstance] setNewEvent:FALSE];
    }
}

-(IBAction)onAddEventClick:(id)sender
{
		AddEventView *addEventView = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
    	if (addEventView != nil) {
    		[self presentViewController:addEventView animated:true completion:^(){}];
		}
}
@end
