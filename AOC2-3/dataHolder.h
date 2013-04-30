//
//  dataHolder.h
//  AOC2-3
//
//  Created by Nick Stelzer on 4/30/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface dataHolder : NSObject

@property NSString *eventName;
@property NSDate *eventDate;
@property BOOL newEvent;

+(void)CreateInstance;
+(dataHolder*)GetInstance;
-(NSString*)createEventString;

@end
