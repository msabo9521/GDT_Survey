//
//  MJSViewController.m
//  picker
//
//  Created by Michael Sabo on 10/28/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import "MJSViewController.h"

@interface MJSViewController ()
{
    UIPopoverController *popOverController;
    UIPickerView *picker;
    UIToolbar *pickerToolBar;
    NSMutableArray *arrayBuilder;
    NSInteger buttonIndex;
   
    
    
    
}

@end

@implementation MJSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _textField3.delegate = self;
    arrayBuilder =[[NSMutableArray alloc]initWithObjects:@"Rose", @"1MC", @"CPB", @"ACB", nil];
    _textField3.hidden = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Press:(id)sender {
    buttonIndex = 1;
    arrayBuilder =[[NSMutableArray alloc]initWithObjects:@"Rose", @"1MC", @"CPB", @"ACB", nil];
    picker = [[UIPickerView alloc]init];
    pickerToolBar = [[UIToolbar alloc]init];
    
    UIViewController *popOverContent = [[UIViewController alloc]init];
    UIView *popOverView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [picker frame].size.width, [picker frame].size.height+44)];
    picker = [[UIPickerView alloc]initWithFrame:CGRectMake([popOverView frame].origin.x, [popOverView frame].origin.y + 44, 0, 0)];
    pickerToolBar = [[UIToolbar alloc]initWithFrame:CGRectMake([popOverView frame].origin.x, [popOverView frame].origin.y, [popOverView frame].size.width, 44)];
    [picker setDataSource:self];
    [picker setDelegate:self];
    [picker setShowsSelectionIndicator:YES];
    
    [pickerToolBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:Nil action:nil];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(donePressed)];
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelPressed)];
    [pickerToolBar setItems:[NSArray arrayWithObjects:flexSpace,doneButton,cancelButton, nil]];
    
    [popOverView addSubview:picker];
    [popOverView addSubview:pickerToolBar];
    [popOverContent setView:popOverView];
    
    popOverController = [[UIPopoverController alloc]initWithContentViewController:popOverContent];
    popOverController.popoverContentSize = CGSizeMake([picker frame].size.width, [popOverView frame].size.height);
    [popOverController presentPopoverFromRect:[self button1].frame inView:[self view] permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

- (IBAction)button2Press:(id)sender {
    buttonIndex = 2;
    arrayBuilder =[[NSMutableArray alloc]initWithObjects:@"1", @"2", @"3", @"4", nil];
    picker = [[UIPickerView alloc]init];
    pickerToolBar = [[UIToolbar alloc]init];
    
    UIViewController *popOverContent = [[UIViewController alloc]init];
    UIView *popOverView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [picker frame].size.width, [picker frame].size.height+44)];
    picker = [[UIPickerView alloc]initWithFrame:CGRectMake([popOverView frame].origin.x, [popOverView frame].origin.y + 44, 0, 0)];
    pickerToolBar = [[UIToolbar alloc]initWithFrame:CGRectMake([popOverView frame].origin.x, [popOverView frame].origin.y, [popOverView frame].size.width, 44)];
    [picker setDataSource:self];
    [picker setDelegate:self];
    [picker setShowsSelectionIndicator:YES];
    
    [pickerToolBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:Nil action:nil];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(donePressed)];
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelPressed)];
    [pickerToolBar setItems:[NSArray arrayWithObjects:flexSpace,doneButton,cancelButton, nil]];
    
    [popOverView addSubview:picker];
    [popOverView addSubview:pickerToolBar];
    [popOverContent setView:popOverView];
    
    popOverController = [[UIPopoverController alloc]initWithContentViewController:popOverContent];
    popOverController.popoverContentSize = CGSizeMake([picker frame].size.width, [popOverView frame].size.height);
    [popOverController presentPopoverFromRect:[self button2].frame inView:[self view] permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    
    
    
    
}

- (IBAction)button3:(id)sender {
    _textField3.hidden = NO;
    [_textField3 becomeFirstResponder];
    
    
     
    
    

}

- (IBAction)textField3Done:(id)sender {
    _textField3.hidden = YES;
    [[self label3]setText:self.textField3.text];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [arrayBuilder count];
    
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [arrayBuilder objectAtIndex:row];
    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (buttonIndex == 1){
    [[self label1]setText:[arrayBuilder objectAtIndex:row]];
    }
    if (buttonIndex == 2) {
        [[self label2]setText:[arrayBuilder objectAtIndex:row]];
    }
    
}
-(void)donePressed
{
    [popOverController dismissPopoverAnimated:YES];
    
}
-(void)cancelPressed
{
    [[self label1]setText:nil];
    [popOverController dismissPopoverAnimated:YES];

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_textField3 resignFirstResponder];
    return YES;
    
}


@end
