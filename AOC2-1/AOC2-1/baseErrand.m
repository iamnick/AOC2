//
//  baseErrand.m
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "baseErrand.h"

@implementation baseErrand

@synthesize errandLocation, errandDay, errandTimeMinutes;

-(id)init
{
	self = [super init];
    if (self != nil) {
        errandLocation = nil;
        errandDay = nil;
        errandTimeMinutes = 0;
    }
    return self;
}

-(void)calculateErrandTime
{
	// specific calculations done in each subclass via override
}

@end
