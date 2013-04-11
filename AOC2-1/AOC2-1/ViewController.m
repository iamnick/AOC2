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
    
    // Calculate Grocery Trip Time
    [weeklyGroceryTrip calculateErrandTime];
    
    // Display Information
    NSLog(@"You are going to the grocery store to pick up %d items, it will take approx %d minutes", [weeklyGroceryTrip.groceryList count], [weeklyGroceryTrip errandTimeMinutes]);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
