//
//  ViewController.m
//  NSDate
//
//  Created by Oğuz Bayat on 19/07/17.
//  Copyright © 2017 oguzbayat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize yearLabel,monthLabel,dateLabel,dayLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    // Set your locale identifier. tr,en_US, en_GB, fr_FR, de_DE, ja_JP etc...
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"tr"];
    [formatter setLocale:locale];
    [formatter setDateFormat:@"y,MMMM,d,E"];
    
    // Date to string
    NSDate *now = [NSDate date];
    NSString *stringDate = [formatter stringFromDate:now];
    
    // Split stringDate by comma.
    NSArray *values = [stringDate componentsSeparatedByString:@","];
    
    
    yearLabel.text = [values objectAtIndex:0];
    monthLabel.text = [values objectAtIndex:1];
    dateLabel.text = [values objectAtIndex:2];
    dayLabel.text = [values objectAtIndex:3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
