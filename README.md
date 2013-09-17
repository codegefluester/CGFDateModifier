CGFDateModifier
===============

Modify a NSDate the easy way


Example usage
===
```objc

NSDate *oneWeekFromNow = [CGFDateModifier dateByModifiyingDate:[NSDate date] 
                                                  withModifier:@"+1 week"];

NSDate *multipleModifiers = [CGFDateModifier dateByModifiyingDate:[NSDate date] 
                                                    withModifiers:@[@"+1 week", @"+2 days"]];
```
