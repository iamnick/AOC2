//
//  ViewController.h
//  AOC2-2
//
//  Created by Nick Stelzer on 4/17/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "errandFactory.h"

@interface ViewController : UIViewController
{
	IBOutlet UIButton *groceryButton;
    IBOutlet UIButton *mailButton;
    IBOutlet UIButton *drycleaningButton;
    
    IBOutlet UILabel *propertyDescLabelA;
    IBOutlet UILabel *propertyDescLabelB;
    IBOutlet UILabel *propertyValLabelA;
    IBOutlet UILabel *propertyValLabelB;
	IBOutlet UIStepper *propertyStepperA;
    IBOutlet UIStepper *propertyStepperB;
}

-(IBAction)onErrandClick:(id)sender;
-(IBAction)onStepperChange:(id)sender;
@end
