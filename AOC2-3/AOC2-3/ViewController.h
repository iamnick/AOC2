//
//  ViewController.h
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventView.h"

@interface ViewController : UIViewController <passEventInfoDelegate>
{
	IBOutlet UITextView *eventTextView;
}

-(IBAction)onAddEventClick:(id)sender;

@end
