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
    
    // Display Information
    NSLog(@"You are going to %@ to pick up %d items, it will take approx %d minutes", [weeklyGroceryTrip errandLocation], [weeklyGroceryTrip.groceryList count], [weeklyGroceryTrip errandTimeMinutes]);
    NSLog(@"You are going to %@ to pick up %d items and drop off %d items. It will take approx %d minutes", [battisonsTrip errandLocation], [battisonsTrip itemsToPickUp], [battisonsTrip itemsToDropOff], [battisonsTrip errandTimeMinutes]);
    NSLog(@"You are going to %@ to send %d packages and pick up %d packages. It will take approx %d minutes", [postOfficeTrip errandLocation], [postOfficeTrip packagesToSend], [postOfficeTrip packagesToPickUp], [postOfficeTrip errandTimeMinutes]);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
