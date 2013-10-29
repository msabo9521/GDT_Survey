//
//  MJSViewController.h
//  picker
//
//  Created by Michael Sabo on 10/28/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJSViewController : UIViewController<UIPopoverControllerDelegate, UIPickerViewDataSource,UIPickerViewDelegate, UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UILabel *button1;
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UILabel *label3;
@property (strong, nonatomic) IBOutlet UITextField *textField3;




- (IBAction)button1Press:(id)sender;
- (IBAction)button2Press:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)textField3Done:(id)sender;


@end
