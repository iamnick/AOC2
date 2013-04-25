//
//  AddEventView.h
//  AOC2-3
//
//  Created by Nick Stelzer on 4/25/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol passEventInfoDelegate <NSObject>
-(void)didClose:(NSString*)eventName;
@end

@interface AddEventView : UIViewController
{
	IBOutlet UITextField *eventNameTextField;
    IBOutlet UIDatePicker *eventDatePicker;
    
    id<passEventInfoDelegate> delegate;
}

-(IBAction)onSaveEventClick:(id)sender;
-(IBAction)onCloseKeyboardClick:(id)sender;

@property (strong) id<passEventInfoDelegate> delegate;

@end
