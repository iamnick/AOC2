//
//  AddEventView.h
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventView : UIViewController
{
	IBOutlet UITextField *eventNameTextField;
    IBOutlet UIDatePicker *eventDatePicker;
}

-(IBAction)onSaveEventClick:(id)sender;
-(IBAction)onCloseKeyboardClick:(id)sender;

@end
