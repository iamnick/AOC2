//
//  dataHolder.m
//  AOC2-3
//
//  Created by Nick Stelzer on 4/30/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "dataHolder.h"

@implementation dataHolder

@synthesize eventName, eventDate, newEvent;

static dataHolder *_instance = nil;

+(void)CreateInstance
{
	if (_instance == nil) {
    	[[self alloc] init];
    }
}

+(dataHolder*)GetInstance
{
	return _instance;
}

+(id)alloc
{
	_instance = [super alloc];
    return _instance;
}

-(id)init
{
	if (self = [super init])
    {
    	newEvent = FALSE;
    }
    return self;
}

-(NSString*)createEventString
{
	// Format the date
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        [dateFormatter setDateFormat:@"MMMM dd, y - hh:mm a"];
    }
    NSString *eventString = [[NSString alloc] initWithFormat:@"%@\n%@\n\n", eventName, [dateFormatter stringFromDate:eventDate]];
	return eventString;
}

@end
