//
//  CGFDateModifier.m
//
//  Created by Björn Kaiser on 17.07.13.
//  Copyright (c) 2013 Björn Kaiser. All rights reserved.
//

#import "CGFDateModifier.h"

@implementation CGFDateModifier


+ (NSDate*) dateByModifiyingDate:(NSDate*)date withModifier:(NSString*)modifier
{
    BOOL substract = NO;
    __block int numOfKind = 0;
    CGFHumanDateModifierType type;
    NSDateComponents *components = [[NSDateComponents alloc] init];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    // What should we do (add vs. sub)?
    if([modifier hasPrefix:@"-"]) substract = YES;
    
    // How much?
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[0-9]{1,}" options:0 error:&error];
    
    if (error == NULL) {
        [regex enumerateMatchesInString:modifier options:0 range:NSMakeRange(0, [modifier length]) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
            NSString *match = [modifier substringWithRange:[result range]];
            if(substract) numOfKind -= [match intValue];
            else numOfKind += [match intValue];
        }];
    }
    
    // What kind? (days, months, years)
    if ([modifier rangeOfString:@"day"].location != NSNotFound)
    {
        type = CGFHumanDateModifierTypeDays;
    }
    else if([modifier rangeOfString:@"week"].location != NSNotFound)
    {
        type = CGFHumanDateModifierTypeWeeks;
    }
    else if([modifier rangeOfString:@"month"].location != NSNotFound)
    {
        type = CGFHumanDateModifierTypeMonths;
    }
    else if([modifier rangeOfString:@"year"].location != NSNotFound)
    {
        type = CGFHumanDateModifierTypeYears;
    }
    else
    {
        // We default to adding 0 days
        type = CGFHumanDateModifierTypeDays;
    }
    
    switch (type) {
        case CGFHumanDateModifierTypeDays:
            [components setDay:numOfKind];
            break;
        case CGFHumanDateModifierTypeWeeks:
            [components setWeekOfYear:numOfKind];
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
    
    return [gregorian dateByAddingComponents:components toDate:date options:0];
}

+ (NSDate*) dateByModifiyingDate:(NSDate*)date withModifiers:(NSArray*)modifiers
{
    NSDate *resultDate = date;
    
    if(modifiers != nil && modifiers.count > 0)
    {
        for (NSString *modifier in modifiers) {
            resultDate = [CGFDateModifier dateByModifiyingDate:resultDate withModifier:modifier];
        }
    }
    
    return resultDate;
}

@end
