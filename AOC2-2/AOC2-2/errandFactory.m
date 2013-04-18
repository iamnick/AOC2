//
//  errandFactory.m
//  AOC2-2
//
//  Created by Nick Stelzer on 4/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "errandFactory.h"

@implementation errandFactory

+(baseErrand *)createErrand:(int)errandType
{
	// Create proper errand based on the type value sent into this method
	if (errandType == DRYCLEANING) {
    	return [[drycleaningErrand alloc] init];
    } else if (errandType == GROCERY) {
    	return [[groceryErrand alloc] init];
    } else if (errandType == MAIL) {
    	return [[mailErrand alloc] init];
    } else {
    	return nil;
    }
}

@end
