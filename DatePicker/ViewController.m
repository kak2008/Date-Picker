//
//  ViewController.m
//  DatePicker
//
//  Created by Anish Kodeboyina on 12/23/15.
//  Copyright © 2015 Anish Kodeboyina. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    datePicker = [[UIDatePicker alloc]init];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [self.datePickerTextField setInputView:datePicker];
    
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolbar setTintColor: [UIColor orangeColor]];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done"
                                                                  style:UIBarButtonItemStyleDone
                                                                 target:self
                                                                 action:@selector(showSelectedDate)];
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                          target:nil
                                                                          action:nil];
    [toolbar setItems:[NSArray arrayWithObjects:space, doneButton, nil]];
    [self.datePickerTextField setInputAccessoryView:toolbar];
}

- (void)showSelectedDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd/MMM/YYYY hh:min a"];
    self.datePickerTextField.text = [NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:datePicker.date]];
    [self.datePickerTextField resignFirstResponder];
}


@end
