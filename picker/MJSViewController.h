//
//  MJSViewController.h
//  picker
//
//  Created by Michael Sabo on 10/28/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "MJSStringObjects.h"

@interface MJSViewController : UIViewController<UIPopoverControllerDelegate, UIPickerViewDataSource,UIPickerViewDelegate, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate>
{
    UIImagePickerController *imagePicker;
    MJSStringObjects *sobj;
    
    
}

@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *allLabels;


@property (strong, nonatomic) UIButton *buttonObject;

//new outlets
@property (strong, nonatomic) IBOutlet UIButton *closetID;
@property (strong, nonatomic) IBOutlet UILabel *closetIDLabel;
@property (strong, nonatomic) IBOutlet UIButton *building;
@property (strong, nonatomic) IBOutlet UILabel *buildingLabel;
@property (strong, nonatomic) IBOutlet UIButton *buildingFloor;
@property (strong, nonatomic) IBOutlet UILabel *buildingFloorLabel;
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
@property (strong, nonatomic) IBOutlet UILabel *switchIDLabel;






@property (strong, nonatomic) IBOutlet UIButton *secSwitch;
@property (strong, nonatomic) IBOutlet UILabel *secSwitchLabel;


@property (strong, nonatomic) IBOutlet UILabel *portsUsedLabel;

@property (strong, nonatomic) IBOutlet UILabel *portsFreeLabel;




@property (strong, nonatomic) IBOutlet UITextField *switchIDTextField;
@property (strong, nonatomic) IBOutlet UILabel *numSupLabel;
@property (strong, nonatomic) IBOutlet UILabel *numBladesLabel;
@property (strong, nonatomic) IBOutlet UILabel *usedPortsLabel;
@property (strong, nonatomic) IBOutlet UILabel *freePortsLabel;
@property (strong, nonatomic) IBOutlet UITextField *numSupTextField;
@property (strong, nonatomic) IBOutlet UITextField *numBladesTextField;
@property (strong, nonatomic) IBOutlet UITextField *usedPortsTextField;
@property (strong, nonatomic) IBOutlet UITextField *freePortsTextField;
@property (strong, nonatomic) IBOutlet UIButton *connector1;
@property (strong, nonatomic) IBOutlet UILabel *connector1Label;
@property (strong, nonatomic) IBOutlet UIButton *connector2;
@property (strong, nonatomic) IBOutlet UILabel *connector2Label;
@property (strong, nonatomic) IBOutlet UIButton *connector3;
@property (strong, nonatomic) IBOutlet UILabel *connector3Label;
@property (strong, nonatomic) IBOutlet UIButton *connector4;
@property (strong, nonatomic) IBOutlet UILabel *connector4Label;
@property (strong, nonatomic) IBOutlet UIButton *cableType1;
@property (strong, nonatomic) IBOutlet UILabel *cableType1Label;
@property (strong, nonatomic) IBOutlet UIButton *cableType2;
@property (strong, nonatomic) IBOutlet UILabel *cableType2Label;
@property (strong, nonatomic) IBOutlet UIButton *cableType3;
@property (strong, nonatomic) IBOutlet UILabel *cableType3Label;
@property (strong, nonatomic) IBOutlet UIButton *cableType4;
@property (strong, nonatomic) IBOutlet UILabel *cableType4Label;
@property (strong, nonatomic) IBOutlet UILabel *cable1LengthLabel;
@property (strong, nonatomic) IBOutlet UILabel *cable2LengthLabel;
@property (strong, nonatomic) IBOutlet UILabel *cable3LengthLabel;
@property (strong, nonatomic) IBOutlet UILabel *cable4LengthLabel;
@property (strong, nonatomic) IBOutlet UILabel *cable1QtyLabel;
@property (strong, nonatomic) IBOutlet UILabel *cable2QtyLabel;
@property (strong, nonatomic) IBOutlet UILabel *cable3QtyLabel;
@property (strong, nonatomic) IBOutlet UILabel *cable4QtyLabel;
@property (strong, nonatomic) IBOutlet UITextField *cable1LenghtTextField;
@property (strong, nonatomic) IBOutlet UITextField *cable2LenghtTextField;
@property (strong, nonatomic) IBOutlet UITextField *cable3LenghtTextField;
@property (strong, nonatomic) IBOutlet UITextField *cable4LenghtTextField;
@property (strong, nonatomic) IBOutlet UITextField *cable1QtyTextField;
@property (strong, nonatomic) IBOutlet UITextField *cable2QtyTextField;
@property (strong, nonatomic) IBOutlet UITextField *cable3QtyTextField;
@property (strong, nonatomic) IBOutlet UITextField *cable4QtyTextField;
@property (strong, nonatomic) IBOutlet UILabel *cablesReqLabelsLabel;
@property (strong, nonatomic) IBOutlet UITextField *cablesReqLabelsTextField;
@property (strong, nonatomic) IBOutlet UIButton *rackType;
@property (strong, nonatomic) IBOutlet UILabel *rackTypeLabel;
@property (strong, nonatomic) IBOutlet UILabel *rackHeightLabel;
@property (strong, nonatomic) IBOutlet UITextField *rackHeightTextField;
@property (strong, nonatomic) IBOutlet UILabel *rackWidthLabel;
@property (strong, nonatomic) IBOutlet UITextField *rackWidthTextField;
@property (strong, nonatomic) IBOutlet UILabel *rackDepthLabel;
@property (strong, nonatomic) IBOutlet UITextField *rackDepthTextField;
@property (strong, nonatomic) IBOutlet UIButton *anchored;
@property (strong, nonatomic) IBOutlet UILabel *anchoredLabel;
@property (strong, nonatomic) IBOutlet UIButton *grounded;
@property (strong, nonatomic) IBOutlet UILabel *groundedLabel;
@property (strong, nonatomic) IBOutlet UIButton *ladders;
@property (strong, nonatomic) IBOutlet UILabel *laddersLabel;
@property (strong, nonatomic) IBOutlet UIButton *waterfalls;
@property (strong, nonatomic) IBOutlet UILabel *waterfallsLabel;
@property (strong, nonatomic) IBOutlet UILabel *vertMgrWidthLabel;
@property (strong, nonatomic) IBOutlet UITextField *vertMgrWidthTextField;
@property (strong, nonatomic) IBOutlet UILabel *horzMgrWidthLabel;
@property (strong, nonatomic) IBOutlet UITextField *horzMgrWidthTextField;
@property (strong, nonatomic) IBOutlet UIButton *pduType;
@property (strong, nonatomic) IBOutlet UILabel *pduTypeLabel;
@property (strong, nonatomic) IBOutlet UIButton *pdu01Source;
@property (strong, nonatomic) IBOutlet UILabel *pdu01SourceLabel;
@property (strong, nonatomic) IBOutlet UIButton *pdu02Source;
@property (strong, nonatomic) IBOutlet UILabel *pdu02SourceLabel;
@property (strong, nonatomic) IBOutlet UIButton *upsModel;
@property (strong, nonatomic) IBOutlet UILabel *upsModelLabel;
@property (strong, nonatomic) IBOutlet UIButton *upsSource;
@property (strong, nonatomic) IBOutlet UILabel *upsSourceLabel;
@property (strong, nonatomic) IBOutlet UIButton *surgeSup;
@property (strong, nonatomic) IBOutlet UILabel *surgeSupLabel;
@property (strong, nonatomic) IBOutlet UILabel *freeUPSOutLabel;
@property (strong, nonatomic) IBOutlet UILabel *freeNonUPSOutLabel;
@property (strong, nonatomic) IBOutlet UITextField *freeUPSOutTextField;
@property (strong, nonatomic) IBOutlet UITextField *freeNonUPSOutTextField;
@property (strong, nonatomic) IBOutlet UILabel *swBottomRULabel;
@property (strong, nonatomic) IBOutlet UITextField *swBottomRUTextField;
@property (strong, nonatomic) IBOutlet UILabel *swTopRULabel;
@property (strong, nonatomic) IBOutlet UITextField *swTopRUTextField;

// Note Fields
@property (strong, nonatomic) IBOutlet UITextView *locationNotes;
@property (strong, nonatomic) IBOutlet UITextView *existEquipNotes;
@property (strong, nonatomic) IBOutlet UITextView *existCableNotes;
@property (strong, nonatomic) IBOutlet UITextView *rackNotes;
@property (strong, nonatomic) IBOutlet UITextView *powerNotes;







//new actions
- (IBAction)closetIDButton:(id)sender;
- (IBAction)buildingButton:(id)sender;
- (IBAction)buildingFloorButton:(id)sender;
- (IBAction)roomAccessButton:(id)sender;
- (IBAction)buildingNameButton:(id)sender;
- (IBAction)buildingAddressButton:(id)sender;
- (IBAction)switchModelButton:(id)sender;
- (IBAction)switchIDButton:(id)sender;
- (IBAction)rackWidthDone:(id)sender;
- (IBAction)rackDepthButton:(id)sender;
- (IBAction)rackDepthDone:(id)sender;
- (IBAction)anchoredButton:(id)sender;
- (IBAction)groundedButton:(id)sender;
- (IBAction)laddersButon:(id)sender;
- (IBAction)waterfallsButton:(id)sender;
- (IBAction)vertMgrWidthButton:(id)sender;
- (IBAction)vertMgrWidthDone:(id)sender;
- (IBAction)horzMgrWidthButton:(id)sender;
- (IBAction)horzMgrWidthDone:(id)sender;
- (IBAction)pduTypeButton:(id)sender;
- (IBAction)pdu01SourceButton:(id)sender;
- (IBAction)pdu02SourceButton:(id)sender;
- (IBAction)upsModelButton:(id)sender;
- (IBAction)upsSourceButton:(id)sender;
- (IBAction)surgeSupButton:(id)sender;
- (IBAction)freeUPSOutButton:(id)sender;
- (IBAction)freeNonUPSOutButton:(id)sender;
- (IBAction)freeUPSOutDone:(id)sender;
- (IBAction)freeNonUPSOutDone:(id)sender;
- (IBAction)swBottomRUButton:(id)sender;
- (IBAction)swBottomRUDone:(id)sender;
- (IBAction)swTopRUButton:(id)sender;
- (IBAction)swTopRUDone:(id)sender;




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
- (IBAction)connector1Button:(id)sender;
- (IBAction)connector2Button:(id)sender;
- (IBAction)connector3Button:(id)sender;
- (IBAction)connector4Button:(id)sender;
- (IBAction)cableType1Button:(id)sender;
- (IBAction)cableType2Button:(id)sender;
- (IBAction)cableType3Button:(id)sender;
- (IBAction)cableType4Button:(id)sender;
- (IBAction)cable1lengthButton:(id)sender;
- (IBAction)cable2LengthButton:(id)sender;
- (IBAction)cable3LengthButton:(id)sender;
- (IBAction)cable4LengthButton:(id)sender;
- (IBAction)cable1QtyButton:(id)sender;
- (IBAction)cable2QtyButton:(id)sender;
- (IBAction)cable3QtyButton:(id)sender;
- (IBAction)cable4QtyButton:(id)sender;
- (IBAction)cable1LengthDone:(id)sender;
- (IBAction)cable2LengthDone:(id)sender;
- (IBAction)cable3LengthDone:(id)sender;
- (IBAction)cable4LengthDone:(id)sender;
- (IBAction)cable1QtyDone:(id)sender;
- (IBAction)cable2QtyDone:(id)sender;
- (IBAction)cable3QtyDone:(id)sender;
- (IBAction)cable4QtyDone:(id)sender;
- (IBAction)cablesReqLabelsButton:(id)sender;
- (IBAction)cablesReqLabelsDone:(id)sender;
- (IBAction)rackTypeButton:(id)sender;
- (IBAction)rackHeightButton:(id)sender;
- (IBAction)rackHeightDone:(id)sender;
- (IBAction)rackWidthButton:(id)sender;






- (IBAction)updateButton:(id)sender;





#pragma mark - camera code
- (IBAction)cameraButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *camImage;

- (IBAction)sendPhoto:(id)sender;
@property (strong, nonatomic) IBOutlet UIProgressView *progressBar;


@end
