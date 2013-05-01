//
//  ViewController.h
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventView.h"

@interface ViewController : UIViewController
{
	IBOutlet UITextView *eventTextView;
    IBOutlet UIButton *saveEventsButton;
    IBOutlet UILabel *addEventLabel;
	UISwipeGestureRecognizer *rightSwipe;
    
    NSUserDefaults *defaults;
}

-(IBAction)onAddEventClick:(id)sender;
-(IBAction)onSaveEventsClick:(id)sender;
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;

@end
