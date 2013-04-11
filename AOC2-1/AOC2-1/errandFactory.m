//
//  errandFactory.m
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import "errandFactory.h"

@implementation errandFactory

+(baseErrand *)createErrand: (int)errandType
{
	return [[groceryErrand alloc] init];
}

@end
