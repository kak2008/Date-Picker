//
//  ViewController.h
//  DatePicker
//
//  Created by Anish Kodeboyina on 12/23/15.
//  Copyright © 2015 Anish Kodeboyina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIDatePicker *datePicker;
}

@property (weak, nonatomic) IBOutlet UITextField *datePickerTextField;

@end

