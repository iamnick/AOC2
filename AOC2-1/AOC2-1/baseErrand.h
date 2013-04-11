//
//  baseErrand.h
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseErrand : NSObject
{
	int errandEnum;
}

typedef enum {
	DRYCLEANING = 0,
    GROCERY,
    MAIL
} errandEnum;

@property NSString *errandDetails;
@property NSString *errandLocation;
@property int errandTimeMinutes;

-(id)init;
-(void)calculateErrandTime;
@end
