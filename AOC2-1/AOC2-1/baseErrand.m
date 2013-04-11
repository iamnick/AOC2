//
//  baseErrand.m
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "baseErrand.h"

@implementation baseErrand

@synthesize errandDetails, errandLocation, errandTimeMinutes;

-(id)init
{
	self = [super init];
    if (self != nil) {
    	errandDetails = nil;
        errandLocation = nil;
        errandTimeMinutes = 0;
    }
    return self;
}

-(void)calculateErrandTime
{
	NSLog(@"This errand will take %d minutes to do.", errandTimeMinutes);
}

@end
