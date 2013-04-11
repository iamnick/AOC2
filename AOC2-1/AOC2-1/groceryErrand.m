//
//  groceryErrand.m
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "groceryErrand.h"

@implementation groceryErrand

@synthesize groceryList;

-(id)init
{
	self = [super init];
    if (self != nil) {
        [self setErrandLocation:@"Big Y"];
        [self setErrandTimeMinutes:10];
    }
    return self;
}

-(void)calculateErrandTime
{
	// Allow 3 minutes per item on grocery list
	[self setErrandTimeMinutes:(self.errandTimeMinutes + ([groceryList count] * 3))];
}

@end
