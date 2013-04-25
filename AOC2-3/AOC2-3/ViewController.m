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

-(void)didClose:(NSString *)eventName
{
	eventTextView.text = eventName;
}
@end
