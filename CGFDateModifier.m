//
//  CGFDateModifier.m
//
//  Created by Björn Kaiser on 17.07.13.
//  Copyright (c) 2013 Björn Kaiser. All rights reserved.
//

#import "CGFDateModifier.h"

@implementation CGFDateModifier

+ (NSDate*) dateByModifiyingDate:(NSDate*)date withModifiers:(NSDictionary*)modifiers
{
    NSDate *resultDate = date;

    if(modifiers != nil && modifiers.count > 0)
    {
        for (NSNumber *modifier in [modifiers allKeys]) {

            CGFHumanDateModifierType type = (CGFHumanDateModifierType)[modifier intValue];
            int numOfKind = [modifiers[modifier] intValue];
            NSDateComponents *components = [[NSDateComponents alloc] init];
            NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];

            switch (type) {
                case CGFHumanDateModifierTypeDays:
                    [components setDay:numOfKind];
                    break;
                case CGFHumanDateModifierTypeWeeks:
                    [components setWeek:numOfKind];
                    break;
                case CGFHumanDateModifierTypeMonths:
                    [components setMonth:numOfKind];
                    break;
                case CGFHumanDateModifierTypeYears:
                    [components setYear:numOfKind];
                    break;
                default:
                    [components setDay:0];
                    break;
            }

            resultDate = [gregorian dateByAddingComponents:components toDate:resultDate options:0];
        }
    }

    return resultDate;
}

@end
