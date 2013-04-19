//
//  InfoView.h
//  AOC2-2
//
//  Created by Nick Stelzer on 4/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Settings.h"

@interface InfoView : UIViewController
{
	IBOutlet UISegmentedControl *bgColorSegment;
}
-(IBAction)onClose:(id)sender;
-(IBAction)onSegmentChange:(id)sender;

@end
