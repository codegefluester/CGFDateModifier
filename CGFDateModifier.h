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

/**
  * Usage:
  * NSDate *multipleModifiers = [CGFDateModifier dateByModifiyingDate:[NSDate date]
                                                        withModifiers:@{
                                                                         @(CGFHumanDateModifierTypeDays) : @(+1),
                                                                         @(CGFHumanDateModifierTypeMonths) : @(-1)
                                                                       }];
 **/
+ (NSDate*) dateByModifiyingDate:(NSDate*)date withModifiers:(NSDictionary*)modifiers;

@end
