//
//  mailErrand.m
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "mailErrand.h"

@implementation mailErrand

@synthesize packagesToSend, packagesToPickUp;

-(id)init
{
	self = [super init];
    if (self != nil) {
        [self setErrandLocation:@"Post Office"];
        [self setErrandDay:@"Monday"];
        [self setErrandTimeMinutes:5];
    }
    return self;
}

-(void)calculateErrandTime
{
	// Allow an extra 5 minutes to load packages being brought to post office
    if (packagesToSend > 0) {
    	[self setErrandTimeMinutes:(self.errandTimeMinutes + 5)];
    }
    // Allow an extra 5 minutes if packages are being picked up from post office
	if (packagesToPickUp > 0) {
    	[self setErrandTimeMinutes:(self.errandTimeMinutes + 5)];
    }
}

@end
