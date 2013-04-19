//
//  Settings.m
//  AOC2-2
//
//  Created by Nick Stelzer on 4/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "Settings.h"

@implementation Settings

@synthesize bgColor, colorIndex;

static Settings *_instance = nil;

+(void)CreateInstance
{
	if (_instance == nil) {
    	[[self alloc] init];
    }
}

+(Settings*)GetInstance
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
    	// set default bg color
        bgColor = [UIColor whiteColor];
        colorIndex = 0;
    }
    return self;
}

@end
