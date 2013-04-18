//
//  drycleaningErrand.m
//  AOC2-2
//
//  Created by Nick Stelzer on 4/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "drycleaningErrand.h"

@implementation drycleaningErrand

@synthesize itemsToPickUp, itemsToDropOff;

-(id)init
{
	self = [super init];
    if (self != nil) {
        [self setErrandLocation:@"Battison's"];
        [self setErrandDay:@"Thursday"];
        [self setErrandTimeMinutes:20];
    }
    return self;
}

-(void)calculateErrandTime
{
	// Add a minute per item being picked up or dropped off
    [self setErrandTimeMinutes:(self.errandTimeMinutes + itemsToPickUp + itemsToDropOff)];
}

@end
