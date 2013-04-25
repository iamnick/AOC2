//
//  ViewController.m
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"
#import "AddEventView.h"

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

-(IBAction)onAddEventClick:(id)sender
{
		AddEventView *addEventView = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
    	if (addEventView != nil) {
        	addEventView.delegate = self;
    		[self presentViewController:addEventView animated:true completion:^(){}];
		}
}

-(void)saveEvent:(NSString*)eventName eventDate:(NSDate*)eventDate
{
	// Format the date
     NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        [dateFormatter setDateFormat:@"MMMM dd, y - hh:mm a"];
    }
    
    // Capture current text in textview
    NSMutableString *textViewText = [[NSMutableString alloc] initWithString:eventTextView.text];
    
    // Add event name and date to existing text from the text view
	[textViewText appendString:[NSString stringWithFormat:@"%@\n%@\n\n", eventName, [dateFormatter stringFromDate:eventDate]]];
    
    // Re-add updated text to the text view
    eventTextView.text = textViewText;
    NSLog(@"date=%@", [eventDate description]);
}
@end
