//
//  MJSViewController.h
//  picker
//
//  Created by Michael Sabo on 10/28/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJSViewController : UIViewController<UIPopoverControllerDelegate, UIPickerViewDataSource,UIPickerViewDelegate, UITextFieldDelegate>



@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UILabel *label3;
@property (strong, nonatomic) IBOutlet UITextField *textField3;
@property (strong, nonatomic) UIButton *buttonObject;

//new outlets
@property (strong, nonatomic) IBOutlet UIButton *closetID;
@property (strong, nonatomic) IBOutlet UILabel *closetIDLabel;
@property (strong, nonatomic) IBOutlet UIButton *building;
@property (strong, nonatomic) IBOutlet UILabel *buildingLabel;
@property (strong, nonatomic) IBOutlet UIButton *buildingFloor;
@property (strong, nonatomic) IBOutlet UILabel *BuildingFloorLabel;
@property (strong, nonatomic) IBOutlet UITextField *buildingFloorTextField;
@property (strong, nonatomic) IBOutlet UIButton *roomAccess;
@property (strong, nonatomic) IBOutlet UILabel *roomAccessLabel;
@property (strong, nonatomic) IBOutlet UIButton *buildingName;
@property (strong, nonatomic) IBOutlet UILabel *buildingNameLabel;
@property (strong, nonatomic) IBOutlet UIButton *buildingAddress;
@property (strong, nonatomic) IBOutlet UILabel *buildingAddressLabel;
@property (strong, nonatomic) IBOutlet UIButton *switchModel;
@property (strong, nonatomic) IBOutlet UILabel *switchModelLabel;
@property (strong, nonatomic) IBOutlet UIButton *switchID;
@property (strong, nonatomic) IBOutlet UILabel *SwitchIDLabel;
@property (strong, nonatomic) IBOutlet UIButton *chassisConfig;

@property (strong, nonatomic) IBOutlet UIButton *switchHeight;
@property (strong, nonatomic) IBOutlet UILabel *switchHeightLabel;
@property (strong, nonatomic) IBOutlet UIButton *ports;

@property (strong, nonatomic) IBOutlet UIButton *secSwitch;
@property (strong, nonatomic) IBOutlet UILabel *secSwitchLabel;
@property (strong, nonatomic) IBOutlet UILabel *supCountLabel;
@property (strong, nonatomic) IBOutlet UILabel *bladeCountLabel;

@property (strong, nonatomic) IBOutlet UILabel *portsUsedLabel;

@property (strong, nonatomic) IBOutlet UILabel *portsFreeLabel;

@property (strong, nonatomic) IBOutlet UITextField *portsUsed;


@property (strong, nonatomic) IBOutlet UITextField *switchIDTextField;
@property (strong, nonatomic) IBOutlet UILabel *numSupLabel;
@property (strong, nonatomic) IBOutlet UILabel *numBladesLabel;
@property (strong, nonatomic) IBOutlet UILabel *usedPortsLabel;
@property (strong, nonatomic) IBOutlet UILabel *freePortsLabel;
@property (strong, nonatomic) IBOutlet UITextField *numSupTextField;
@property (strong, nonatomic) IBOutlet UITextField *numBladesTextField;
@property (strong, nonatomic) IBOutlet UITextField *usedPortsTextField;
@property (strong, nonatomic) IBOutlet UITextField *freePortsTextField;







//new actions
- (IBAction)closetIDButton:(id)sender;
- (IBAction)buildingButton:(id)sender;
- (IBAction)buildingFloorButton:(id)sender;
- (IBAction)roomAccessButton:(id)sender;
- (IBAction)buildingNameButton:(id)sender;
- (IBAction)buildingAddressButton:(id)sender;
- (IBAction)switchModelButton:(id)sender;
- (IBAction)switchIDButton:(id)sender;

- (IBAction)switchHeightButton:(id)sender;

- (IBAction)secSwitchButton:(id)sender;

- (IBAction)buildingFloorDone:(id)sender;

- (IBAction)portUsedDone:(id)sender;

- (IBAction)switchIDDone:(id)sender;
- (IBAction)numSupButton:(id)sender;
- (IBAction)numBladesButton:(id)sender;
- (IBAction)usedPortsButton:(id)sender;
- (IBAction)freePortsButton:(id)sender;
- (IBAction)numSupDone:(id)sender;
- (IBAction)numBladesDone:(id)sender;
- (IBAction)freePortsDone:(id)sender;







- (IBAction)button1Press:(id)sender;
- (IBAction)button2Press:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)textField3Done:(id)sender;
- (IBAction)buttonDone:(id)sender;


@end
