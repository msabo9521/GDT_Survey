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

#pragma mark - value variables
    // create value variables

    
    
    NSData *imageUpload;
    
    
    
}

@end

@implementation MJSViewController
@synthesize buttonObject;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    sobj = [MJSStringObjects singObj];
    



#pragma mark - textfield delegates
    _buildingFloorTextField.delegate = self;
    _numSupTextField.delegate =self;
    _numBladesTextField.delegate =self;
    _swBottomRUTextField.delegate = self;
    _swTopRUTextField.delegate = self;
    _usedPortsTextField.delegate =self;
    _freePortsTextField.delegate =self;
    _switchIDTextField.delegate =self;
    _cable1LenghtTextField.delegate =self;
    _cable2LenghtTextField.delegate =self;
    _cable3LenghtTextField.delegate =self;
    _cable4LenghtTextField.delegate =self;
    _cable1QtyTextField.delegate =self;
    _cable2QtyTextField.delegate =self;
    _cable3QtyTextField.delegate =self;
    _cable4QtyTextField.delegate =self;
    
    _cablesReqLabelsTextField.delegate = self;
    _rackHeightTextField.delegate = self;
    _rackWidthTextField.delegate = self;
    _rackDepthTextField.delegate = self;
    _vertMgrWidthTextField.delegate = self;
    _horzMgrWidthTextField.delegate = self;
    _freeUPSOutTextField.delegate = self;
    _freeNonUPSOutTextField.delegate = self;
    _locationNotes.delegate =self;
    _existEquipNotes.delegate = self;
    _existCableNotes.delegate = self;
    _rackNotes.delegate = self;
    _powerNotes.delegate = self;
    
    
#pragma mark - hide textfields
    _buildingFloorTextField.hidden = YES;
    _numSupTextField.hidden = YES;
    _numBladesTextField.hidden = YES;
    _usedPortsTextField.hidden = YES;
    _swBottomRUTextField.hidden = YES;
    _swTopRUTextField.hidden = YES;
    _freePortsTextField.hidden = YES;
    _switchIDTextField.hidden = YES;
    _cable1LenghtTextField.hidden = YES;
    _cable2LenghtTextField.hidden = YES;
    _cable3LenghtTextField.hidden = YES;
    _cable4LenghtTextField.hidden = YES;
    _cable1QtyTextField.hidden = YES;
    _cable2QtyTextField.hidden = YES;
    _cable3QtyTextField.hidden = YES;
    _cable4QtyTextField.hidden = YES;
    _cablesReqLabelsTextField.hidden = YES;
    _rackHeightTextField.hidden = YES;
    _rackWidthTextField.hidden = YES;
    _rackDepthTextField.hidden = YES;
    _vertMgrWidthTextField.hidden = YES;
    _horzMgrWidthTextField.hidden = YES;
    _freeUPSOutTextField.hidden = YES;
    _freeNonUPSOutTextField.hidden = YES;
    [self setLabels];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    [self setLabels];
}



#pragma mark - button actions for values with picker input
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
    [self pickerMethod];
}
- (IBAction)roomAccessButton:(id)sender {
    buttonIndex = 3;
    arrayBuilder = [MJSArrayObjects roomAccessArray];
    buttonObject = self.roomAccess;
    [self pickerMethod];
}

- (IBAction)buildingNameButton:(id)sender {
    buttonIndex = 4;
    arrayBuilder = [MJSArrayObjects buildingNameArray];
    buttonObject = self.buildingName;
    [self pickerMethod];
}
- (IBAction)buildingAddressButton:(id)sender {
    // fix with array
    buttonIndex = 5;
    arrayBuilder = [MJSArrayObjects buildingNameArray];
    buttonObject = self.buildingAddress;
    [self pickerMethod];
}

- (IBAction)switchModelButton:(id)sender {
    buttonIndex = 6;
    arrayBuilder = [MJSArrayObjects switchModelArray];
    buttonObject = self.switchModel;
    [self pickerMethod];
}

- (IBAction)secSwitchButton:(id)sender {
    buttonIndex = 7;
    arrayBuilder = [MJSArrayObjects boolArray];
    buttonObject = self.secSwitch;
    [self pickerMethod];
}
- (IBAction)connector1Button:(id)sender {
    buttonIndex = 8;
    arrayBuilder = [MJSArrayObjects connectorArray];
    buttonObject = self.connector1;
    [self pickerMethod];}

- (IBAction)connector2Button:(id)sender {
    buttonIndex = 9;
    arrayBuilder = [MJSArrayObjects connectorArray];
    buttonObject = self.connector2;
    [self pickerMethod];}

- (IBAction)connector3Button:(id)sender {
    buttonIndex = 10;
    arrayBuilder = [MJSArrayObjects connectorArray];
    buttonObject = self.connector3;
    [self pickerMethod];}

- (IBAction)connector4Button:(id)sender {
    buttonIndex = 11;
    arrayBuilder = [MJSArrayObjects connectorArray];
    buttonObject = self.connector4;
    [self pickerMethod];}

- (IBAction)cableType1Button:(id)sender {
    buttonIndex = 12;
    arrayBuilder = [MJSArrayObjects cableTypeArray];
    buttonObject = self.cableType1;
    [self pickerMethod];}

- (IBAction)cableType2Button:(id)sender {
    buttonIndex = 13;
    arrayBuilder = [MJSArrayObjects cableTypeArray];
    buttonObject = self.cableType2;
    [self pickerMethod];}

- (IBAction)cableType3Button:(id)sender {
    buttonIndex = 14;
    arrayBuilder = [MJSArrayObjects cableTypeArray];
    buttonObject = self.cableType3;
    [self pickerMethod];}

- (IBAction)cableType4Button:(id)sender {
    buttonIndex = 15;
    arrayBuilder = [MJSArrayObjects cableTypeArray];
    buttonObject = self.cableType4;
    [self pickerMethod];
}
- (IBAction)rackTypeButton:(id)sender {
    buttonIndex = 16;
    arrayBuilder = [MJSArrayObjects rackTypeArray];
    buttonObject = self.rackType;
    [self pickerMethod];
}
- (IBAction)anchoredButton:(id)sender {
    buttonIndex = 17;
    arrayBuilder = [MJSArrayObjects boolArray];
    buttonObject = self.anchored;
    [self pickerMethod];
}
- (IBAction)groundedButton:(id)sender {
    buttonIndex = 18;
    arrayBuilder = [MJSArrayObjects boolArray];
    buttonObject = self.grounded;
    [self pickerMethod];
}
- (IBAction)laddersButon:(id)sender {
    buttonIndex = 19;
    arrayBuilder = [MJSArrayObjects boolArray];
    buttonObject = self.ladders;
    [self pickerMethod];
}
- (IBAction)waterfallsButton:(id)sender {
    buttonIndex = 20;
    arrayBuilder = [MJSArrayObjects boolArray];
    buttonObject = self.waterfalls;
    [self pickerMethod];
}
- (IBAction)pduTypeButton:(id)sender {
    buttonIndex = 21;
    arrayBuilder = [MJSArrayObjects pduModelArray];
    buttonObject = self.pduType;
    [self pickerMethod];
}
- (IBAction)pdu01SourceButton:(id)sender {
    buttonIndex = 22;
    arrayBuilder = [MJSArrayObjects powerOutletArray];
    buttonObject = self.pdu01Source;
    [self pickerMethod];
}
- (IBAction)pdu02SourceButton:(id)sender {
    buttonIndex = 23;
    arrayBuilder = [MJSArrayObjects powerOutletArray];
    buttonObject = self.pdu02Source;
    [self pickerMethod];
}
- (IBAction)upsModelButton:(id)sender {
    buttonIndex = 24;
    arrayBuilder = [MJSArrayObjects upsModelArray];
    buttonObject = self.upsModel;
    [self pickerMethod];
}
- (IBAction)upsSourceButton:(id)sender {
    buttonIndex = 25;
    arrayBuilder = [MJSArrayObjects plugTypeArray];
    buttonObject = self.upsSource;
    [self pickerMethod];
}
- (IBAction)surgeSupButton:(id)sender {
    buttonIndex = 26;
    arrayBuilder = [MJSArrayObjects boolArray];
    buttonObject = self.surgeSup;
    [self pickerMethod];
}


#pragma mark - button actions for vaules with text input

- (IBAction)buildingFloorButton:(id)sender {
    _buildingFloorTextField.hidden = NO;
    [_buildingFloorTextField becomeFirstResponder];
}
- (IBAction)switchIDButton:(id)sender {
    _switchIDTextField.hidden = NO;
    [_switchIDTextField becomeFirstResponder];
    [self.view setFrame:CGRectMake(-352, 0, 1024, 768)];
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
- (IBAction)swBottomRUButton:(id)sender {
    _swBottomRUTextField.hidden = NO;
    [_swBottomRUTextField becomeFirstResponder];
    [self.view setFrame:CGRectMake(-352, 0, 1024, 768)];
}
- (IBAction)swTopRUButton:(id)sender {
    _swTopRUTextField.hidden = NO;
    [_swTopRUTextField becomeFirstResponder];
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
- (IBAction)cable1lengthButton:(id)sender {
    _cable1LenghtTextField.hidden = NO;
    [_cable1LenghtTextField becomeFirstResponder];}

- (IBAction)cable2LengthButton:(id)sender {
    _cable2LenghtTextField.hidden = NO;
    [_cable2LenghtTextField becomeFirstResponder];}

- (IBAction)cable3LengthButton:(id)sender {
    _cable3LenghtTextField.hidden = NO;
    [_cable3LenghtTextField becomeFirstResponder];}

- (IBAction)cable4LengthButton:(id)sender {
    _cable4LenghtTextField.hidden = NO;
    [_cable4LenghtTextField becomeFirstResponder];}

- (IBAction)cable1QtyButton:(id)sender {
    _cable1QtyTextField.hidden = NO;
    [_cable1QtyTextField becomeFirstResponder];
}
- (IBAction)cable2QtyButton:(id)sender {
    _cable2QtyTextField.hidden = NO;
    [_cable2QtyTextField becomeFirstResponder];
}
- (IBAction)cable3QtyButton:(id)sender {
    _cable3QtyTextField.hidden = NO;
    [_cable3QtyTextField becomeFirstResponder];
}
- (IBAction)cable4QtyButton:(id)sender {
    _cable4QtyTextField.hidden = NO;
    [_cable4QtyTextField becomeFirstResponder];
}



- (IBAction)cablesReqLabelsButton:(id)sender {
    _cablesReqLabelsTextField.hidden = NO;
    [_cablesReqLabelsTextField becomeFirstResponder];
}
- (IBAction)rackHeightButton:(id)sender {
    _rackHeightTextField.hidden = NO;
    [_rackHeightTextField becomeFirstResponder];
}
- (IBAction)rackWidthButton:(id)sender {
    _rackWidthTextField.hidden = NO;
    [_rackWidthTextField becomeFirstResponder];
}
- (IBAction)rackDepthButton:(id)sender {
    _rackDepthTextField.hidden = NO;
    [_rackDepthTextField becomeFirstResponder];
}
- (IBAction)vertMgrWidthButton:(id)sender {
    _vertMgrWidthTextField.hidden = NO;
    [_vertMgrWidthTextField becomeFirstResponder];
}
- (IBAction)horzMgrWidthButton:(id)sender {
    _horzMgrWidthTextField.hidden = NO;
    [_horzMgrWidthTextField becomeFirstResponder];
}
- (IBAction)freeUPSOutButton:(id)sender {
    _freeUPSOutTextField.hidden = NO;
    [_freeUPSOutTextField becomeFirstResponder];
}
- (IBAction)freeNonUPSOutButton:(id)sender {
    _freeNonUPSOutTextField.hidden = NO;
    [_freeNonUPSOutTextField becomeFirstResponder];
}



#pragma mark - done editing text


- (IBAction)buildingFloorDone:(id)sender {
    _buildingFloorTextField.hidden = YES;
    [[self buildingFloorLabel]setText:self.buildingFloorTextField.text];
    sobj.buildingFloorValue = self.buildingFloorTextField.text;
}
- (IBAction)portUsedDone:(id)sender {
    _usedPortsTextField.hidden = YES;
    [[self usedPortsLabel]setText:self.usedPortsTextField.text];
    sobj.usedPortsValue = self.usedPortsTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}
- (IBAction)switchIDDone:(id)sender {
    _switchIDTextField.hidden = YES;
    [[self switchIDLabel]setText:self.switchIDTextField.text];
    sobj.switchIDValue = self.switchIDTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}
- (IBAction)numSupDone:(id)sender {
    _numSupTextField.hidden = YES;
    [[self numSupLabel]setText:self.numSupTextField.text];
    sobj.numSupValue = self.numSupTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}
- (IBAction)numBladesDone:(id)sender {
    _numBladesTextField.hidden = YES;
    [[self numBladesLabel]setText:self.numBladesTextField.text];
    sobj.numBladesValue = self.numBladesTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}
- (IBAction)swBottomRUDone:(id)sender {
    _swBottomRUTextField.hidden = YES;
    [[self swBottomRULabel]setText:self.swBottomRUTextField.text];
    sobj.swBottomRUValue = self.swBottomRUTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}
- (IBAction)swTopRUDone:(id)sender {
    _swTopRUTextField.hidden = YES;
    [[self swTopRULabel]setText:self.swTopRUTextField.text];
    sobj.swTopRUValue = self.swTopRUTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}
- (IBAction)freePortsDone:(id)sender {
    _freePortsTextField.hidden = YES;
    [[self freePortsLabel]setText:self.freePortsTextField.text];
    sobj.freePortsValue = self.freePortsTextField.text;
    [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
}
- (IBAction)cable1LengthDone:(id)sender {
    _cable1LenghtTextField.hidden = YES;
    [[self cable1LengthLabel]setText:self.cable1LenghtTextField.text];
    sobj.cable1LengthValue = self.cable1LenghtTextField.text;
}
- (IBAction)cable2LengthDone:(id)sender {
    _cable2LenghtTextField.hidden = YES;
    [[self cable2LengthLabel]setText:self.cable2LenghtTextField.text];
    sobj.cable2LengthValue = self.cable2LenghtTextField.text;
}
- (IBAction)cable3LengthDone:(id)sender {
    _cable3LenghtTextField.hidden = YES;
    [[self cable3LengthLabel]setText:self.cable3LenghtTextField.text];
    sobj.cable3LengthValue = self.cable3LenghtTextField.text;
}
- (IBAction)cable4LengthDone:(id)sender {
    _cable4LenghtTextField.hidden = YES;
    [[self cable4LengthLabel]setText:self.cable4LenghtTextField.text];
    sobj.cable4LengthValue = self.cable4LenghtTextField.text;}

- (IBAction)cable1QtyDone:(id)sender {
    _cable1QtyTextField.hidden = YES;
    [[self cable1QtyLabel]setText:self.cable1QtyTextField.text];
    sobj.cable1QtyValue = self.cable1QtyTextField.text;
}
- (IBAction)cable2QtyDone:(id)sender {
    _cable2QtyTextField.hidden = YES;
    [[self cable2QtyLabel]setText:self.cable2QtyTextField.text];
    sobj.cable2QtyValue = self.cable2QtyTextField.text;
}
- (IBAction)cable3QtyDone:(id)sender {
    _cable3QtyTextField.hidden = YES;
    [[self cable3QtyLabel]setText:self.cable3QtyTextField.text];
    sobj.cable3QtyValue = self.cable3QtyTextField.text;
}
- (IBAction)cable4QtyDone:(id)sender {
    _cable4QtyTextField.hidden = YES;
    [[self cable4QtyLabel]setText:self.cable4QtyTextField.text];
    sobj.cable4QtyValue = self.cable4QtyTextField.text;
}


- (IBAction)cablesReqLabelsDone:(id)sender {
    _cablesReqLabelsTextField.hidden = YES;
    [[self cablesReqLabelsLabel]setText:self.cablesReqLabelsTextField.text];
    sobj.cablesReqLabelsValue = self.cablesReqLabelsTextField.text;
}
- (IBAction)rackHeightDone:(id)sender {
    _rackHeightTextField.hidden = YES;
    [[self rackHeightLabel]setText:self.rackHeightTextField.text];
    sobj.rackHeightValue = self.rackHeightTextField.text;
}
- (IBAction)rackWidthDone:(id)sender {
    _rackWidthTextField.hidden = YES;
    [[self rackWidthLabel]setText:self.rackWidthTextField.text];
    sobj.rackWidthValue = self.rackWidthTextField.text;
}
- (IBAction)rackDepthDone:(id)sender {
    _rackDepthTextField.hidden = YES;
    [[self rackDepthLabel]setText:self.rackDepthTextField.text];
    sobj.rackDepthValue = self.rackDepthTextField.text;
}
- (IBAction)vertMgrWidthDone:(id)sender {
    _vertMgrWidthTextField.hidden = YES;
    [[self vertMgrWidthLabel]setText:self.vertMgrWidthTextField.text];
    sobj.vertMgrWidthValue = self.vertMgrWidthTextField.text;
}
- (IBAction)horzMgrWidthDone:(id)sender {
    _horzMgrWidthTextField.hidden = YES;
    [[self horzMgrWidthLabel]setText:self.horzMgrWidthTextField.text];
    sobj.horzMgrWidthValue = self.horzMgrWidthTextField.text;
}
- (IBAction)freeUPSOutDone:(id)sender {
    _freeUPSOutTextField.hidden = YES;
    [[self freeUPSOutLabel]setText:self.freeUPSOutTextField.text];
    sobj.freeUPSOutValue = self.freeUPSOutTextField.text;
}
- (IBAction)freeNonUPSOutDone:(id)sender {
    _freeNonUPSOutTextField.hidden = YES;
    [[self freeNonUPSOutLabel]setText:self.freeNonUPSOutTextField.text];
    sobj.freeNonUPSOutValue = self.freeNonUPSOutTextField.text;
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
        sobj.closetIDValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 2) {
        [[self buildingLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.buildingValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 3) {
        [[self roomAccessLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.roomAccessValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 4) {
        [[self buildingNameLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.buildingNameValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 5) {
        [[self buildingAddressLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.buildingAddressValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 6) {
        [[self switchModelLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.switchModelValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 7) {
        [[self secSwitchLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.secSwitchValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 8) {
        [[self connector1Label]setText:[arrayBuilder objectAtIndex:row]];
         sobj.cable1ConnectorValue = [arrayBuilder objectAtIndex:row];
        NSLog(@"%@", sobj.cable1ConnectorValue);
        NSLog(@"%@", sobj.closetIDValue);
    }
    if (buttonIndex == 9) {
        [[self connector2Label]setText:[arrayBuilder objectAtIndex:row]];
        sobj.cable2ConnectorValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 10) {
        [[self connector3Label]setText:[arrayBuilder objectAtIndex:row]];
        sobj.cable3ConnectorValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 11) {
        [[self connector4Label]setText:[arrayBuilder objectAtIndex:row]];
        sobj.cable4ConnectorValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 12) {
        [[self cableType1Label]setText:[arrayBuilder objectAtIndex:row]];
        sobj.cable1TypeValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 13) {
        [[self cableType2Label]setText:[arrayBuilder objectAtIndex:row]];
        sobj.cable2TypeValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 14) {
        [[self cableType3Label]setText:[arrayBuilder objectAtIndex:row]];
        sobj.cable3TypeValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 15) {
        [[self cableType4Label]setText:[arrayBuilder objectAtIndex:row]];
        sobj.cable4TypeValue = [arrayBuilder objectAtIndex:row];
    }
    
    
    if (buttonIndex == 16) {
        [[self rackTypeLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.rackDepthValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 17) {
        [[self anchoredLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.anchorValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 18) {
        [[self groundedLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.groundValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 19) {
        [[self laddersLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.laddersValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 20) {
        [[self waterfallsLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.waterfallsValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 21) {
        [[self pduTypeLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.pduTypeValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 22) {
        [[self pdu01SourceLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.pdu01SourceValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 23) {
        [[self pdu02SourceLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.pdu02SourceValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 24) {
        [[self upsModelLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.upsModelValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 25) {
        [[self upsSourceLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.upsSourceValue = [arrayBuilder objectAtIndex:row];
    }
    if (buttonIndex == 26) {
        [[self surgeSupLabel]setText:[arrayBuilder objectAtIndex:row]];
        sobj.surgeSupValue = [arrayBuilder objectAtIndex:row];
    }

    
    
    
    
}
-(void)donePressed
{
    [popOverController dismissPopoverAnimated:YES];
    
}
-(void)cancelPressed
{
    
    [popOverController dismissPopoverAnimated:YES];
    
}


//TextField Remove Keyboard on enter/return
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
    
}




#pragma mark -  draw picker


// draw picker
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

- (IBAction)cameraButton:(id)sender {
    imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:imagePicker animated:YES completion:NULL];
    
    
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [_camImage setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
    imageUpload = UIImageJPEGRepresentation(image, .8);
    
    
}

-(void)textViewDidEndEditing:(UITextView *)textView{
    if (textView == self.locationNotes){
        sobj.locationNotesValue = self.locationNotes.text;
    }
    if (textView == self.existEquipNotes){
        sobj.existEquipNotesValue = self.existEquipNotes.text;
    }
    if (textView == self.existCableNotes) {
        sobj.existCableNotesValue = self.existCableNotes.text;
    }
    if (textView == self.rackNotes) {
        sobj.rackNotesValue = self.rackNotes.text;
    }
    if (textView == self.powerNotes) {
        sobj.powerNotesValue = self.powerNotes.text;
    }
    [textView resignFirstResponder];
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
- (IBAction)sendPhoto:(id)sender {
    NSString *empty;
    NSString *test = @"nope";
    NSString *fileName = [test stringByAppendingString:@".jpg"];
    PFFile *file = [PFFile fileWithName:fileName data:imageUpload];
    PFQuery *query = [PFQuery queryWithClassName:@"mda"];
    [query whereKey:@"building" equalTo:test];
    PFObject *object = [query getFirstObject];
    if (object.objectId == NULL){
        NSLog(@"if");
        PFObject *surveyObject= [PFObject objectWithClassName:@"mda"];
        surveyObject[@"building"] = test;
        surveyObject[@"buildingRoom"] = empty;
        surveyObject[@"picture"] = file;
        [surveyObject save];
    }
    else {
        NSLog(@"else");
    [query getObjectInBackgroundWithId:object.objectId block:^(PFObject *surveyObject, NSError *error) {
        surveyObject[@"buildingRoom"] = @"jojo";
        surveyObject[@"picture"] = file;
        [surveyObject save];
            
        }];
    }
    
    /*
    PFFile *file = [PFFile fileWithName:[@"%@.jpg",test] data:imageUpload];
    PFObject *surveyObject= [PFObject objectWithClassName:@"mda"];
    surveyObject[@"username"] = @"surveyUser";
    surveyObject[@"building"] = @"rose";
    surveyObject[@"picture"] = file;
    [surveyObject save];
     */
    
}


- (IBAction)updateButton:(id)sender {
    if (sobj.closetIDValue == NULL) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Closet ID cannot be blank!" delegate:nil cancelButtonTitle:@"Exit" otherButtonTitles:nil, nil];
        [alert show];
    }
    
    else{

        
    PFQuery *query = [PFQuery queryWithClassName:@"mda"];
    [query whereKey:@"closetIDValue" equalTo:sobj.closetIDValue];
    PFObject *object = [query getFirstObject];
    if (object.objectId == NULL){
        PFObject *surveyObject= [PFObject objectWithClassName:@"mda"];
        surveyObject[@"closetIDValue"]=sobj.closetIDValue;
        if (sobj.buildingValue != NULL) {
            surveyObject[@"buildingValue"]=sobj.buildingValue;
        }
        if (sobj.buildingFloorValue != NULL) {
            surveyObject[@"buildingFloorValue"]=sobj.buildingFloorValue;
        }
        if (sobj.roomAccessValue != NULL) {
            surveyObject[@"roomAccessValue"]=sobj.roomAccessValue;
        }
        if (sobj.buildingNameValue != NULL) {
            surveyObject[@"buildingNameValue"]=sobj.buildingNameValue;
        }
        if (sobj.buildingAddressValue != NULL) {
            surveyObject[@"buildingAddressValue"]=sobj.buildingAddressValue;
        }
        if (sobj.switchModelValue != NULL) {
            surveyObject[@"switchModelValue"]=sobj.switchModelValue;
        }
        if (sobj.switchIDValue != NULL) {
            surveyObject[@"switchIDValue"]=sobj.switchIDValue;
        }
        if (sobj.secSwitchValue != NULL) {
            surveyObject[@"secSwitchValue"]=sobj.secSwitchValue;
        }
        if (sobj.numSupValue != NULL) {
            surveyObject[@"numSupValue"]=sobj.numSupValue;
        }
        if (sobj.numBladesValue != NULL) {
            surveyObject[@"numBladesValue"]=sobj.numBladesValue;
        }
        if (sobj.usedPortsValue != NULL) {
            surveyObject[@"usedPortsValue"]=sobj.usedPortsValue;
        }
        if (sobj.freePortsValue != NULL) {
            surveyObject[@"freePortsValue"]=sobj.freePortsValue;
        }
        if (sobj.cable1ConnectorValue != NULL) {
            surveyObject[@"cable1ConnectorValue"]=sobj.cable1ConnectorValue;
        }
        if (sobj.cable2ConnectorValue != NULL) {
            surveyObject[@"cable2ConnectorValue"]=sobj.cable2ConnectorValue;
        }
        if (sobj.cable3ConnectorValue != NULL) {
            surveyObject[@"cable3ConnectorValue"]=sobj.cable3ConnectorValue;
        }
        if (sobj.cable4ConnectorValue != NULL) {
            surveyObject[@"cable4ConnectorValue"]=sobj.cable4ConnectorValue;
        }
        if (sobj.cable1TypeValue != NULL) {
            surveyObject[@"cable1TypeValue"]=sobj.cable1TypeValue;
        }
        if (sobj.cable2TypeValue != NULL) {
            surveyObject[@"cable2TypeValue"]=sobj.cable2TypeValue;
        }
        if (sobj.cable3TypeValue != NULL) {
            surveyObject[@"cable3TypeValue"]=sobj.cable3TypeValue;
        }
        if (sobj.cable4TypeValue != NULL) {
            surveyObject[@"cable4TypeValue"]=sobj.cable4TypeValue;
        }
        if (sobj.cable1LengthValue != NULL) {
            surveyObject[@"cable1LengthValue"]=sobj.cable1LengthValue;
        }
        if (sobj.cable2LengthValue != NULL) {
            surveyObject[@"cable2LengthValue"]=sobj.cable2LengthValue;
        }
        if (sobj.cable3LengthValue != NULL) {
            surveyObject[@"cable3LengthValue"]=sobj.cable3LengthValue;
        }
        if (sobj.cable4LengthValue != NULL) {
            surveyObject[@"cable4LengthValue"]=sobj.cable4LengthValue;
        }
        if (sobj.cable1QtyValue != NULL) {
            surveyObject[@"cable1QtyValue"]=sobj.cable1QtyValue;
        }
        if (sobj.cable2QtyValue != NULL) {
            surveyObject[@"cable2QtyValue"]=sobj.cable2QtyValue;
        }
        if (sobj.cable3QtyValue != NULL) {
            surveyObject[@"cable3QtyValue"]=sobj.cable3QtyValue;
        }
        if (sobj.cable4QtyValue != NULL) {
            surveyObject[@"cable4QtyValue"]=sobj.cable4QtyValue;
        }
        if (sobj.swBottomRUValue!= NULL) {
            surveyObject[@"swBottomRUValue"]=sobj.swBottomRUValue;
        }
        if (sobj.swTopRUValue!= NULL) {
            surveyObject[@"swTopRUValue"]=sobj.swTopRUValue;
        }
        if (sobj.cablesReqLabelsValue!= NULL) {
            surveyObject[@"cablesReqLabelsValue"]=sobj.cablesReqLabelsValue;
        }
        if (sobj.rackTypeValue!= NULL) {
            surveyObject[@"rackTypeValue"]=sobj.rackTypeValue;
        }
        if (sobj.rackHeightValue!= NULL) {
            surveyObject[@"rackHeightValue"]=sobj.rackHeightValue;
        }
        if (sobj.rackWidthValue!= NULL) {
            surveyObject[@"rackWidthValue"]=sobj.rackWidthValue;
        }
        if (sobj.rackDepthValue!= NULL) {
            surveyObject[@"rackDepthValue"]=sobj.rackDepthValue;
        }
        if (sobj.anchorValue!= NULL) {
            surveyObject[@"anchorValue"]=sobj.anchorValue;
        }
        if (sobj.groundValue!= NULL) {
            surveyObject[@"groundValue"]=sobj.groundValue;
        }
        if (sobj.laddersValue!= NULL) {
            surveyObject[@"laddersValue"]=sobj.laddersValue;
        }
        if (sobj.waterfallsValue!= NULL) {
            surveyObject[@"waterfallsValue"]=sobj.waterfallsValue;
        }
        if (sobj.vertMgrWidthValue!= NULL) {
            surveyObject[@"vertMgrWidthValue"]=sobj.vertMgrWidthValue;
        }
        if (sobj.horzMgrWidthValue!= NULL) {
            surveyObject[@"horzMgrWidthValue"]=sobj.horzMgrWidthValue;
        }
        if (sobj.pduTypeValue!= NULL) {
            surveyObject[@"pduTypeValue"]=sobj.pduTypeValue;
        }
        if (sobj.pdu01SourceValue!= NULL) {
            surveyObject[@"pdu01SourceValue"]=sobj.pdu01SourceValue;
        }
        if (sobj.pdu02SourceValue!= NULL) {
            surveyObject[@"pdu02SourceValue"]=sobj.pdu02SourceValue;
        }
        if (sobj.upsModelValue!= NULL) {
            surveyObject[@"upsModelValue"]=sobj.upsModelValue;
        }
        if (sobj.upsSourceValue!= NULL) {
            surveyObject[@"upsSourceValue"]=sobj.upsSourceValue;
        }
        if (sobj.surgeSupValue!= NULL) {
            surveyObject[@"surgeSupValue"]=sobj.surgeSupValue;
        }
        if (sobj.freeUPSOutValue!= NULL) {
            surveyObject[@"freeUPSOutValue"]=sobj.freeUPSOutValue;
        }
        if (sobj.freeNonUPSOutValue!= NULL) {
            surveyObject[@"freeNonUPSOutValue"]=sobj.freeNonUPSOutValue;
        }
        
        if (sobj.locationNotesValue!= NULL) {
            surveyObject[@"locationNotesValue"]=sobj.locationNotesValue;
        }
        if (sobj.existEquipNotesValue!= NULL) {
            surveyObject[@"existEquipNotesValue"]=sobj.existEquipNotesValue;
        }
        if (sobj.existCableNotesValue!= NULL) {
            surveyObject[@"existCableNotesValue"]=sobj.existCableNotesValue;
        }
        if (sobj.rackNotesValue!= NULL) {
            surveyObject[@"rackNotesValue"]=sobj.rackNotesValue;
        }
        if (sobj.powerNotesValue!= NULL) {
            surveyObject[@"powerNotesValue"]=sobj.powerNotesValue;
        }

        
        [surveyObject saveInBackground];
        NSLog(@"%@", sobj.closetIDValue);
        [self resetValues];
        NSLog(@"%@", sobj.closetIDValue);    }
    else {
        [query getObjectInBackgroundWithId:object.objectId block:^(PFObject *surveyObject, NSError *error) {
            if (sobj.buildingValue != NULL) {
                surveyObject[@"buildingValue"]=sobj.buildingValue;
            }
            if (sobj.buildingFloorValue != NULL) {
                surveyObject[@"buildingFloorValue"]=sobj.buildingFloorValue;
            }
            if (sobj.roomAccessValue != NULL) {
                surveyObject[@"roomAccessValue"]=sobj.roomAccessValue;
            }
            if (sobj.buildingNameValue != NULL) {
                surveyObject[@"buildingNameValue"]=sobj.buildingNameValue;
            }
            if (sobj.buildingAddressValue != NULL) {
                surveyObject[@"buildingAddressValue"]=sobj.buildingAddressValue;
            }
            if (sobj.switchModelValue != NULL) {
                surveyObject[@"switchModelValue"]=sobj.switchModelValue;
            }
            if (sobj.switchIDValue != NULL) {
                surveyObject[@"switchIDValue"]=sobj.switchIDValue;
            }
            if (sobj.secSwitchValue != NULL) {
                surveyObject[@"secSwitchValue"]=sobj.secSwitchValue;
            }
            if (sobj.numSupValue != NULL) {
                surveyObject[@"numSupValue"]=sobj.numSupValue;
            }
            if (sobj.numBladesValue != NULL) {
                surveyObject[@"numBladesValue"]=sobj.numBladesValue;
            }
            if (sobj.usedPortsValue != NULL) {
                surveyObject[@"usedPortsValue"]=sobj.usedPortsValue;
            }
            if (sobj.freePortsValue != NULL) {
                surveyObject[@"freePortsValue"]=sobj.freePortsValue;
            }
            if (sobj.cable1ConnectorValue != NULL) {
                surveyObject[@"cable1ConnectorValue"]=sobj.cable1ConnectorValue;
            }
            if (sobj.cable2ConnectorValue != NULL) {
                surveyObject[@"cable2ConnectorValue"]=sobj.cable2ConnectorValue;
            }
            if (sobj.cable3ConnectorValue != NULL) {
                surveyObject[@"cable3ConnectorValue"]=sobj.cable3ConnectorValue;
            }
            if (sobj.cable4ConnectorValue != NULL) {
                surveyObject[@"cable4ConnectorValue"]=sobj.cable4ConnectorValue;
            }
            if (sobj.cable1TypeValue != NULL) {
                surveyObject[@"cable1TypeValue"]=sobj.cable1TypeValue;
            }
            if (sobj.cable2TypeValue != NULL) {
                surveyObject[@"cable2TypeValue"]=sobj.cable2TypeValue;
            }
            if (sobj.cable3TypeValue != NULL) {
                surveyObject[@"cable3TypeValue"]=sobj.cable3TypeValue;
            }
            if (sobj.cable4TypeValue != NULL) {
                surveyObject[@"cable4TypeValue"]=sobj.cable4TypeValue;
            }
            if (sobj.cable1LengthValue != NULL) {
                surveyObject[@"cable1LengthValue"]=sobj.cable1LengthValue;
            }
            if (sobj.cable2LengthValue != NULL) {
                surveyObject[@"cable2LengthValue"]=sobj.cable2LengthValue;
            }
            if (sobj.cable3LengthValue != NULL) {
                surveyObject[@"cable3LengthValue"]=sobj.cable3LengthValue;
            }
            if (sobj.cable4LengthValue != NULL) {
                surveyObject[@"cable4LengthValue"]=sobj.cable4LengthValue;
            }
            if (sobj.cable1QtyValue != NULL) {
                surveyObject[@"cable1QtyValue"]=sobj.cable1QtyValue;
            }
            if (sobj.cable2QtyValue != NULL) {
                surveyObject[@"cable2QtyValue"]=sobj.cable2QtyValue;
            }
            if (sobj.cable3QtyValue != NULL) {
                surveyObject[@"cable3QtyValue"]=sobj.cable3QtyValue;
            }
            if (sobj.cable4QtyValue != NULL) {
                surveyObject[@"cable4QtyValue"]=sobj.cable4QtyValue;
            }
            if (sobj.swBottomRUValue!= NULL) {
                surveyObject[@"swBottomRUValue"]=sobj.swBottomRUValue;
            }
            if (sobj.swTopRUValue!= NULL) {
                surveyObject[@"swTopRUValue"]=sobj.swTopRUValue;
            }
            if (sobj.cablesReqLabelsValue!= NULL) {
                surveyObject[@"cablesReqLabelsValue"]=sobj.cablesReqLabelsValue;
            }
            if (sobj.rackTypeValue!= NULL) {
                surveyObject[@"rackTypeValue"]=sobj.rackTypeValue;
            }
            if (sobj.rackHeightValue!= NULL) {
                surveyObject[@"rackHeightValue"]=sobj.rackHeightValue;
            }
            if (sobj.rackWidthValue!= NULL) {
                surveyObject[@"rackWidthValue"]=sobj.rackWidthValue;
            }
            if (sobj.rackDepthValue!= NULL) {
                surveyObject[@"rackDepthValue"]=sobj.rackDepthValue;
            }
            if (sobj.anchorValue!= NULL) {
                surveyObject[@"anchorValue"]=sobj.anchorValue;
            }
            if (sobj.groundValue!= NULL) {
                surveyObject[@"groundValue"]=sobj.groundValue;
            }
            if (sobj.laddersValue!= NULL) {
                surveyObject[@"laddersValue"]=sobj.laddersValue;
            }
            if (sobj.waterfallsValue!= NULL) {
                surveyObject[@"waterfallsValue"]=sobj.waterfallsValue;
            }
            if (sobj.vertMgrWidthValue!= NULL) {
                surveyObject[@"vertMgrWidthValue"]=sobj.vertMgrWidthValue;
            }
            if (sobj.horzMgrWidthValue!= NULL) {
                surveyObject[@"horzMgrWidthValue"]=sobj.horzMgrWidthValue;
            }
            if (sobj.pduTypeValue!= NULL) {
                surveyObject[@"pduTypeValue"]=sobj.pduTypeValue;
            }
            if (sobj.pdu01SourceValue!= NULL) {
                surveyObject[@"pdu01SourceValue"]=sobj.pdu01SourceValue;
            }
            if (sobj.pdu02SourceValue!= NULL) {
                surveyObject[@"pdu02SourceValue"]=sobj.pdu02SourceValue;
            }
            if (sobj.upsModelValue!= NULL) {
                surveyObject[@"upsModelValue"]=sobj.upsModelValue;
            }
            if (sobj.upsSourceValue!= NULL) {
                surveyObject[@"upsSourceValue"]=sobj.upsSourceValue;
            }
            if (sobj.surgeSupValue!= NULL) {
                surveyObject[@"surgeSupValue"]=sobj.surgeSupValue;
            }
            if (sobj.freeUPSOutValue!= NULL) {
                surveyObject[@"freeUPSOutValue"]=sobj.freeUPSOutValue;
            }
            if (sobj.freeNonUPSOutValue!= NULL) {
                surveyObject[@"freeNonUPSOutValue"]=sobj.freeNonUPSOutValue;
            }
            if (sobj.locationNotesValue!= NULL) {
                surveyObject[@"locationNotesValue"]=sobj.locationNotesValue;
            }
            if (sobj.existEquipNotesValue!= NULL) {
                surveyObject[@"existEquipNotesValue"]=sobj.existEquipNotesValue;
            }
            if (sobj.existCableNotesValue!= NULL) {
                surveyObject[@"existCableNotesValue"]=sobj.existCableNotesValue;
            }
            if (sobj.rackNotesValue!= NULL) {
                surveyObject[@"rackNotesValue"]=sobj.rackNotesValue;
            }
            if (sobj.powerNotesValue!= NULL) {
                surveyObject[@"powerNotesValue"]=sobj.powerNotesValue;
            }
            [surveyObject saveInBackground];
            NSLog(@"%@", sobj.closetIDValue);
            [self resetValues];
            NSLog(@"%@", sobj.closetIDValue);
        }];
    }
    }
}
-(void)setLabels {
    self.closetIDLabel.text = sobj.closetIDValue;
    self.buildingLabel.text = sobj.buildingValue;
    self.buildingFloorLabel.text = sobj.buildingFloorValue;
    self.roomAccessLabel.text = sobj.roomAccessValue;
    self.buildingNameLabel.text = sobj.buildingNameValue;
    self.buildingAddressLabel.text = sobj.buildingAddressValue;
    self.switchModelLabel.text = sobj.switchModelValue;
    self.switchIDLabel.text = sobj.switchIDValue;
    self.secSwitchLabel.text = sobj.secSwitchValue;
    self.numSupLabel.text = sobj.numSupValue;
    self.numBladesLabel.text = sobj.numBladesValue;
    self.swBottomRULabel.text = sobj.swBottomRUValue;
    self.swTopRULabel.text = sobj.swTopRUValue;
    self.usedPortsLabel.text = sobj.usedPortsValue;
    self.freePortsLabel.text = sobj.freePortsValue;
    self.connector1Label.text = sobj.cable1ConnectorValue;
    self.connector2Label.text = sobj.cable2ConnectorValue;
    self.connector3Label.text = sobj.cable3ConnectorValue;
    self.connector4Label.text = sobj.cable4ConnectorValue;
    self.cableType1Label.text = sobj.cable1TypeValue;
    self.cableType2Label.text = sobj.cable2TypeValue;
    self.cableType3Label.text = sobj.cable3TypeValue;
    self.cableType4Label.text = sobj.cable4TypeValue;
    self.cable1LengthLabel.text = sobj.cable1LengthValue;
    self.cable2LengthLabel.text = sobj.cable2LengthValue;
    self.cable3LengthLabel.text = sobj.cable3LengthValue;
    self.cable4LengthLabel.text = sobj.cable4LengthValue;
    self.cable1QtyLabel.text = sobj.cable1QtyValue;
    self.cable2QtyLabel.text = sobj.cable2QtyValue;
    self.cable3QtyLabel.text = sobj.cable3QtyValue;
    self.cable4QtyLabel.text = sobj.cable4QtyValue;
    self.cablesReqLabelsLabel.text = sobj.cablesReqLabelsValue;
    self.rackTypeLabel.text = sobj.rackTypeValue;
    self.rackHeightLabel.text = sobj.rackHeightValue;
    self.rackWidthLabel.text = sobj.rackWidthValue;
    self.rackDepthLabel.text = sobj.rackDepthValue;
    self.anchoredLabel.text = sobj.anchorValue;
    self.groundedLabel.text = sobj.groundValue;
    self.laddersLabel.text = sobj.laddersValue;
    self.waterfallsLabel.text = sobj.waterfallsValue;
    self.vertMgrWidthLabel.text = sobj.vertMgrWidthValue;
    self.horzMgrWidthLabel.text = sobj.horzMgrWidthValue;
    self.pduTypeLabel.text = sobj.pduTypeValue;
    self.pdu01SourceLabel.text = sobj.pdu01SourceValue;
    self.pdu02SourceLabel.text = sobj.pdu02SourceValue;
    self.upsModelLabel.text = sobj.upsModelValue;
    self.upsSourceLabel.text = sobj.upsSourceValue;
    self.surgeSupLabel.text = sobj.surgeSupValue;
    self.freeUPSOutLabel.text = sobj.freeUPSOutValue;
    self.freeNonUPSOutLabel.text = sobj.freeNonUPSOutValue;
    self.locationNotes.text = sobj.locationNotesValue;
    self.existEquipNotes.text = sobj.existEquipNotesValue;
    self.existCableNotes.text = sobj.existCableNotesValue;
    self.rackNotes.text = sobj.rackNotesValue;
    self.powerNotes.text = sobj.powerNotesValue;}

-(void)resetValues {
    sobj.closetIDValue= NULL;
    sobj.buildingValue= NULL;
    sobj.buildingFloorValue= NULL;
    sobj.roomAccessValue= NULL;
    sobj.buildingNameValue= NULL;
    sobj.buildingAddressValue= NULL;
    sobj.switchModelValue= NULL;
    sobj.switchIDValue= NULL;
    sobj.secSwitchValue= NULL;
    sobj.numSupValue= NULL;
    sobj.numBladesValue= NULL;
    sobj.swBottomRUValue= NULL;
    sobj.swTopRUValue= NULL;
    sobj.usedPortsValue= NULL;
    sobj.freePortsValue= NULL;
    sobj.cable1ConnectorValue= NULL;
    sobj.cable2ConnectorValue= NULL;
    sobj.cable3ConnectorValue= NULL;
    sobj.cable4ConnectorValue= NULL;
    sobj.cable1TypeValue= NULL;
    sobj.cable2TypeValue= NULL;
    sobj.cable3TypeValue= NULL;
    sobj.cable4TypeValue= NULL;
    sobj.cable1LengthValue= NULL;
    sobj.cable2LengthValue= NULL;
    sobj.cable3LengthValue= NULL;
    sobj.cable4LengthValue= NULL;
    sobj.cable1QtyValue= NULL;
    sobj.cable2QtyValue= NULL;
    sobj.cable3QtyValue= NULL;
    sobj.cable4QtyValue= NULL;
    sobj.cablesReqLabelsValue= NULL;
    sobj.rackTypeValue= NULL;
    sobj.rackHeightValue= NULL;
    sobj.rackWidthValue= NULL;
    sobj.rackDepthValue= NULL;
    sobj.anchorValue= NULL;
    sobj.groundValue= NULL;
    sobj.laddersValue= NULL;
    sobj.waterfallsValue= NULL;
    sobj.vertMgrWidthValue= NULL;
    sobj.horzMgrWidthValue= NULL;
    sobj.pduTypeValue= NULL;
    sobj.pdu01SourceValue= NULL;
    sobj.pdu02SourceValue= NULL;
    sobj.upsModelValue= NULL;
    sobj.upsSourceValue= NULL;
    sobj.surgeSupValue= NULL;
    sobj.freeUPSOutValue= NULL;
    sobj.freeNonUPSOutValue= NULL;
    sobj.locationNotesValue= NULL;
    sobj.existEquipNotesValue= NULL;
    sobj.existCableNotesValue= NULL;
    sobj.rackNotesValue= NULL;
    sobj.powerNotesValue= NULL;

    
    [[self allLabels] enumerateObjectsUsingBlock:^(UILabel *label, NSUInteger idx, BOOL *stop) {
        label.text = @"";
    }];
    
}
@end
