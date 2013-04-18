//
//  groceryErrand.m
//  AOC2-2
//
//  Created by Nick Stelzer on 4/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "groceryErrand.h"

@implementation groceryErrand

@synthesize groceryListItems;

-(id)init
{
	self = [super init];
    if (self != nil) {
        [self setErrandLocation:@"Big Y"];
        [self setErrandDay:@"Saturday"];
        [self setErrandTimeMinutes:10];
    }
    return self;
}

-(void)calculateErrandTime
{
	// Allow 3 minutes per item on grocery list
    int extraTime = groceryListItems * 3;
	[self setErrandTimeMinutes:(self.errandTimeMinutes + extraTime)];
}

@end
