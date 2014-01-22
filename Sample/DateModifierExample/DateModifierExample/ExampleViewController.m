//
//  ExampleViewController.m
//  DateModifierExample
//
//  Created by Björn Kaiser on 22.01.14.
//  Copyright (c) 2014 Björn Kaiser. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDate *now = [NSDate date];
    
    // Add one week to the current date
    NSDate *demoDate = [CGFDateModifier dateByModifiyingDate:now withModifier:@"+ 1 week"];
    NSLog(@"%@", demoDate);
    
    // Add one week and 2 days
    demoDate = [CGFDateModifier dateByModifiyingDate:now withModifiers:@[@"+ 1 week", @"+ 2 days"]];
     NSLog(@"%@", demoDate);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
