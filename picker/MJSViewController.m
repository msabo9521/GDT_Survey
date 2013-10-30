//
//  MJSViewController.m
//  picker
//
//  Created by Michael Sabo on 10/28/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import "MJSViewController.h"
#import "MJSArrayObjects.h"


@interface MJSViewController ()
{
    UIPopoverController *popOverController;
    UIPickerView *picker;
    UIToolbar *pickerToolBar;
    NSMutableArray *arrayBuilder;
    NSInteger buttonIndex;
    NSString *button1Value;
    NSString *button2Value;
    NSString *button3Value;
    
    // new
    NSString *closetIDValue;
    NSString *buildingValue;
    NSString *buildingFloorValue;
    NSString *roomAccessValue;
    NSString *buildingNameValue;
    NSString *buildingAddressValue;
    NSString *switchModelValue;
    NSString *switchIDValue;
    NSString *switchHeightValue;
    NSString *secSwitchValue;
    NSString *numSupValue;
    NSString *numBladesValue;
    NSString *usedPortsValue;
    NSString *freePortsValue;
    
    
    
    
    
}

@end

@implementation MJSViewController
@synthesize buttonObject;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _buildingFloorTextField.delegate = self;
    _numSupTextField.delegate =self;
    _numBladesTextField.delegate =self;
    _usedPortsTextField.delegate =self;
    _freePortsTextField.delegate =self;
    _switchIDTextField.delegate =self;
    
    
    _buildingFloorTextField.hidden = YES;
    _numSupTextField.hidden = YES;
    _numBladesTextField.hidden = YES;
    _usedPortsTextField.hidden = YES;
    _freePortsTextField.hidden = YES;
    _switchIDTextField.hidden = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closetIDButton:(id)sender {
    buttonIndex = 1;
    arrayBuilder = [MJSArrayObjects closetIDArray];
    buttonObject = self.closetID;
    [self pickerMethod];
}

- (IBAction)buildingButton:(id)sender {
    buttonIndex = 2;
    arrayBuilder = [MJSArrayObjects buildingArray];
    buttonObject = self.building;
    [self pickerMethod];}

- (IBAction)buildingFloorButton:(id)sender {
    // fix with text
    _buildingFloorTextField.hidden = NO;
    [_buildingFloorTextField becomeFirstResponder];
}

- (IBAction)roomAccessButton:(id)sender {
    buttonIndex = 4;
    arrayBuilder = [MJSArrayObjects roomAccessArray];
    buttonObject = self.roomAccess;
    [self pickerMethod];}

- (IBAction)buildingNameButton:(id)sender {
    buttonIndex = 5;
    arrayBuilder = [MJSArrayObjects buildingNameArray];
    buttonObject = self.buildingName;
    [self pickerMethod];}

- (IBAction)buildingAddressButton:(id)sender {
    // fix with text
    buttonIndex = 6;
    arrayBuilder = [MJSArrayObjects buildingNameArray];
    buttonObject = self.buildingAddress;
    [self pickerMethod];}

- (IBAction)switchModelButton:(id)sender {
    buttonIndex = 7;
    arrayBuilder = [MJSArrayObjects switchModelArray];
    buttonObject = self.switchModel;
    [self pickerMethod];}

- (IBAction)switchIDButton:(id)sender {
    _switchIDTextField.hidden = NO;
    [_switchIDTextField becomeFirstResponder];
    [self.view setFrame:CGRectMake(-352, 0, 1024, 768)];
}



- (IBAction)switchHeightButton:(id)sender {
    //fix with text
    buttonIndex = 10;
    arrayBuilder = [MJSArrayObjects closetIDArray];
    buttonObject = self.closetID;
    [self pickerMethod];}


- (IBAction)secSwitchButton:(id)sender {
    buttonIndex = 12;
    arrayBuilder = [MJSArrayObjects boolArray];
    buttonObject = self.secSwitch;
    [self pickerMethod];
}
- (IBAction)numSupButton:(id)sender {
    _numSupTextField.hidden = NO;
    [_numSupTextField becomeFirstResponder];
    [self.view setFrame:CGRectMake(0, -352, 1024, 768)];
    
    

}
- (IBAction)numBladesButton:(id)sender {
    _numBladesTextField.hidden = NO;
    [_numBladesTextField becomeFirstResponder];
    [self.view setFrame:CGRectMake(-352, 0, 1024, 768)];
}

- (IBAction)usedPortsButton:(id)sender {
    _usedPortsTextField.hidden = NO;
    [_usedPortsTextField becomeFirstResponder];
    [self.view setFrame:CGRectMake(-352, 0, 1024, 768)];
}

- (IBAction)freePortsButton:(id)sender {
    _freePortsTextField.hidden = NO;
    [_freePortsTextField becomeFirstResponder];
    [self.view setFrame:CGRectMake(-352, 0, 1024, 768)];
}


- (IBAction)buildingFloorDone:(id)sender {
    _buildingFloorTextField.hidden = YES;
    [[self BuildingFloorLabel]setText:self.buildingFloorTextField.text];
    buildingFloorValue = self.buildingFloorTextField.text;}


- (IBAction)portUsedDone:(id)sender {
    _usedPortsTextField.hidden = YES;
    [[self usedPortsLabel]setText:self.usedPortsTextField.text];
    usedPortsValue = self.usedPortsTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}

- (IBAction)switchIDDone:(id)sender {
    _switchIDTextField.hidden = YES;
    [[self SwitchIDLabel]setText:self.switchIDTextField.text];
    switchIDValue = self.switchIDTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}

- (IBAction)numSupDone:(id)sender {
    _numSupTextField.hidden = YES;
    [[self numSupLabel]setText:self.numSupTextField.text];
    numSupValue = self.numSupTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];

}

- (IBAction)numBladesDone:(id)sender {
    _numBladesTextField.hidden = YES;
    [[self numBladesLabel]setText:self.numBladesTextField.text];
    numBladesValue = self.numBladesTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}

- (IBAction)freePortsDone:(id)sender {
    _freePortsTextField.hidden = YES;
    [[self freePortsLabel]setText:self.freePortsTextField.text];
    freePortsValue = self.freePortsTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}




- (IBAction)buttonDone:(id)sender {
    NSLog(@"%@", closetIDValue);
    NSLog(@"%@", buildingValue);
    NSLog(@"%@", buildingFloorValue);
    NSLog(@"%@", roomAccessValue);
    NSLog(@"%@", buildingNameValue);
    NSLog(@"%@", buildingAddressValue);
    NSLog(@"%@", switchModelValue);
    NSLog(@"%@", switchIDValue);
    NSLog(@"%@", switchHeightValue);
    NSLog(@"%@", secSwitchValue);
    NSLog(@"%@", numSupValue);
    NSLog(@"%@", numBladesValue);
    NSLog(@"%@", usedPortsValue);
    NSLog(@"%@", freePortsValue);
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
        [[self closetIDLabel]setText:[arrayBuilder objectAtIndex:row]];
        closetIDValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 2) {
        [[self buildingLabel]setText:[arrayBuilder objectAtIndex:row]];
        buildingValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 3) {
        [[self BuildingFloorLabel]setText:[arrayBuilder objectAtIndex:row]];
        buildingFloorValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 4) {
        [[self roomAccessLabel]setText:[arrayBuilder objectAtIndex:row]];
        roomAccessValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 5) {
        [[self buildingNameLabel]setText:[arrayBuilder objectAtIndex:row]];
        buildingNameValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 6) {
        [[self buildingAddressLabel]setText:[arrayBuilder objectAtIndex:row]];
        buildingAddressValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 7) {
        [[self switchModelLabel]setText:[arrayBuilder objectAtIndex:row]];
        button2Value = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 8) {
        [[self label2]setText:[arrayBuilder objectAtIndex:row]];
        switchModelValue = [arrayBuilder objectAtIndex:row];
    }

    if (buttonIndex == 10) {
        [[self switchHeightLabel]setText:[arrayBuilder objectAtIndex:row]];
        switchHeightValue = [arrayBuilder objectAtIndex:row];
    }

    if (buttonIndex == 12) {
        [[self secSwitchLabel]setText:[arrayBuilder objectAtIndex:row]];
        secSwitchValue = [arrayBuilder objectAtIndex:row];
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
    [_buildingFloorTextField resignFirstResponder];
    [_numSupTextField resignFirstResponder];
    [_numBladesTextField resignFirstResponder];
    [_usedPortsTextField resignFirstResponder];
    [_freePortsTextField resignFirstResponder];
    [_switchIDTextField resignFirstResponder];
    return YES;
    
}
-(void)pickerMethod
{
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
    [popOverController presentPopoverFromRect:buttonObject.frame inView:[self view] permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}
@end
