//
//  errandFactory.h
//  AOC2-1
//
//  Created by Nick Stelzer on 4/11/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseErrand.h"
#import "drycleaningErrand.h"
#import "groceryErrand.h"
#import "mailErrand.h"

@interface errandFactory : NSObject

+(baseErrand *)createErrand: (int)errandType;

@end
