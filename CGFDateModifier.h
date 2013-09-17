//
//  CGFDateModifier.h
//
//  Created by Björn Kaiser on 17.07.13.
//  Copyright (c) 2013 Björn Kaiser. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    CGFHumanDateModifierTypeDays = 0,
    CGFHumanDateModifierTypeWeeks = 1,
    CGFHumanDateModifierTypeMonths = 2,
    CGFHumanDateModifierTypeYears = 3
} CGFHumanDateModifierType;

@interface CGFDateModifier : NSObject
{
	
}

/**
 *  Usage: [NSDate dateByModifiyingDate:[NSDate date] withModifier:@"+1 week"]
 **/
+ (NSDate*) dateByModifiyingDate:(NSDate*)date withModifier:(NSString*)modifier;

/**
 *  Usage: [NSDate dateByModifiyingDate:[NSDate date] withModifiers:[NSArray arrayWithObjects:@"+1 week", @"+4 days", nil]]
 **/
+ (NSDate*) dateByModifiyingDate:(NSDate*)date withModifiers:(NSArray*)modifiers;

@end
