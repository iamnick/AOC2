//
//  ViewController.m
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{    
	// Create Grocery Trip & List
    groceryErrand *weeklyGroceryTrip = (groceryErrand*)[errandFactory createErrand:GROCERY];
    [weeklyGroceryTrip setGroceryList:([[NSArray alloc] initWithObjects:@"Bananas", @"Cereal", @"Milk", @"Bread", @"Chicken", @"Potato Chips", nil])];
    
    // Create Dry Cleaning Trip & Set Items
    drycleaningErrand *battisonsTrip = (drycleaningErrand*)[errandFactory createErrand:DRYCLEANING];
    [battisonsTrip setItemsToPickUp:4];
    [battisonsTrip setItemsToDropOff:0];
    
    // Create Post Office Trip & Set Package Numbers
    mailErrand *postOfficeTrip = (mailErrand*)[errandFactory createErrand:MAIL];
    [postOfficeTrip setPackagesToPickUp:0];
    [postOfficeTrip setPackagesToSend:1];
    
    // Calculate Errand Times
    [weeklyGroceryTrip calculateErrandTime];
    [battisonsTrip calculateErrandTime];
    [postOfficeTrip calculateErrandTime];
    
    // Create Labels and Display Information
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 25.0f)];
    if (titleLabel != nil) {
    	titleLabel.text = @"Weekly Errand List";
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [titleLabel setFont:[UIFont boldSystemFontOfSize:22]];
        [self.view addSubview:titleLabel];
    }
    UILabel *groceryLabelDesc = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 60.0f, 300.0f, 40.0f)];
    if (groceryLabelDesc != nil) {
    	groceryLabelDesc.text = [NSString stringWithFormat:@"You need to go to %@ on %@ to pick up %d items.", [weeklyGroceryTrip errandLocation], [weeklyGroceryTrip errandDay], [weeklyGroceryTrip.groceryList count]];
        groceryLabelDesc.numberOfLines = 2;
        [self.view addSubview:groceryLabelDesc];
    }
    UILabel *groceryLabelTime = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 110.0f, 300.0f, 40.0f)];
    if (groceryLabelTime != nil) {
    	groceryLabelTime.text = [NSString stringWithFormat:@"This errand will take approx %d minutes.", [weeklyGroceryTrip errandTimeMinutes]];
        groceryLabelTime.numberOfLines = 2;
    	[self.view addSubview:groceryLabelTime];
    }
    UILabel *drycleaningLabelDesc = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 180.0f, 300.0f, 60.0f)];
    if (drycleaningLabelDesc != nil) {
    	drycleaningLabelDesc.text = [NSString stringWithFormat:@"You need to go to %@ on %@ to drop off %d items and pick up %d items.", [battisonsTrip errandLocation], [battisonsTrip errandDay], [battisonsTrip itemsToDropOff], [battisonsTrip itemsToPickUp]];
        drycleaningLabelDesc.numberOfLines = 3;
        [self.view addSubview:drycleaningLabelDesc];
    }
    UILabel *drycleaningLabelTime = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 250.0f, 300.0f, 40.0f)];
    if (drycleaningLabelTime != nil) {
    	drycleaningLabelTime.text = [NSString stringWithFormat:@"This errand will take approx %d minutes.", [battisonsTrip errandTimeMinutes]];
        drycleaningLabelTime.numberOfLines = 2;
        [self.view addSubview:drycleaningLabelTime];
    }
    UILabel *mailLabelDesc = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 320.0f, 300.0f, 60.0f)];
    if (mailLabelDesc != nil) {
    	mailLabelDesc.text = [NSString stringWithFormat:@"You need to go to the %@ on %@ to send %d packages and pick up %d packages.", [postOfficeTrip errandLocation], [postOfficeTrip errandDay], [postOfficeTrip packagesToSend], [postOfficeTrip packagesToPickUp]];
        mailLabelDesc.numberOfLines = 3;
        [self.view addSubview:mailLabelDesc];
    }
    UILabel *mailLabelTime = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 390.0f, 300.0f, 40.0f)];
    if (mailLabelTime != nil) {
        mailLabelTime.text = [NSString stringWithFormat:@"This errand will take approx %d minutes.", [postOfficeTrip errandTimeMinutes]];
        mailLabelTime.numberOfLines = 2;
        [self.view addSubview:mailLabelTime];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
