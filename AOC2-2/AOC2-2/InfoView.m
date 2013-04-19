//
//  InfoView.m
//  AOC2-2
//
//  Created by Nick Stelzer on 4/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "InfoView.h"
#import "Settings.h"

@interface InfoView ()

@end

@implementation InfoView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
	// update segment control to show current background color
    bgColorSegment.selectedSegmentIndex = [[Settings GetInstance] colorIndex];
    
	self.view.backgroundColor = [[Settings GetInstance] bgColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClose:(id)sender
{
	[self dismissViewControllerAnimated:true completion:^(){}];
}

-(IBAction)onSegmentChange:(id)sender
{
	UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl != nil) {
    	int selected = segmentControl.selectedSegmentIndex;
        if (selected == 0) {
        	self.view.backgroundColor = [UIColor whiteColor];
            [[Settings GetInstance] setBgColor:[UIColor whiteColor]];
            [[Settings GetInstance] setColorIndex:0];
        } else if (selected == 1) {
        	self.view.backgroundColor = [UIColor lightGrayColor];
            [[Settings GetInstance] setBgColor:[UIColor lightGrayColor]];
            [[Settings GetInstance] setColorIndex:1];
        } else if (selected == 2) {
        	self.view.backgroundColor = [UIColor darkGrayColor];
            [[Settings GetInstance] setBgColor:[UIColor darkGrayColor]];
            [[Settings GetInstance] setColorIndex:2];
        }
    }
}

@end
