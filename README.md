CGFDateModifier
===============

Modify a NSDate the easy way


Example usage
===
```objc

    NSDate *multipleModifiers = [CGFDateModifier dateByModifiyingDate:[NSDate date] withModifiers:@{  @(CGFHumanDateModifierTypeDays) : @(+1), @(CGFHumanDateModifierTypeMonths) : @(-1)}];
```
