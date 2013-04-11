//
//  mailErrand.m
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "mailErrand.h"

@implementation mailErrand

@synthesize itemsToMail, packagesToPickup;

-(id)init
{
	self = [super init];
    if (self != nil) {
        [self setErrandLocation:@"Big Y"];
        [self setErrandTimeMinutes:10];
    }
    return self;
}

@end
