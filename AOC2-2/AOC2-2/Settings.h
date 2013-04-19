//
//  Settings.h
//  AOC2-2
//
//  Created by Nick Stelzer on 4/18/13.
//  Copyright (c) 2013 Nick Stelzer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Settings : NSObject

@property UIColor *bgColor;
@property int colorIndex;

+(void)CreateInstance;
+(Settings*)GetInstance;

@end
