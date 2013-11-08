//
//  MJSStringObjects.h
//  GDT Surveyor
//
//  Created by Michael Sabo on 11/4/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJSStringObjects : NSObject
@property(nonatomic, strong) NSMutableString *closetIDValue;
@property(nonatomic, strong) NSString *buildingValue;
@property(nonatomic, strong) NSString *buildingFloorValue;
@property(nonatomic, strong) NSString *roomAccessValue;
@property(nonatomic, strong) NSString *buildingNameValue;
@property(nonatomic, strong) NSString *buildingAddressValue;
@property(nonatomic, strong) NSString *switchModelValue;
@property(nonatomic, strong) NSString *switchIDValue;
@property(nonatomic, strong) NSString *secSwitchValue;
@property(nonatomic, strong) NSString *numSupValue;
@property(nonatomic, strong) NSString *numBladesValue;
@property(nonatomic, strong) NSString *swBottomRUValue;
@property(nonatomic, strong) NSString *swTopRUValue;

@property(nonatomic, strong) NSString *usedPortsValue;
@property(nonatomic, strong) NSString *freePortsValue;

@property(nonatomic, strong) NSString *cable1ConnectorValue;
@property(nonatomic, strong) NSString *cable2ConnectorValue;
@property(nonatomic, strong) NSString *cable3ConnectorValue;
@property(nonatomic, strong) NSString *cable4ConnectorValue;

@property(nonatomic, strong) NSString *cable1TypeValue;
@property(nonatomic, strong) NSString *cable2TypeValue;
@property(nonatomic, strong) NSString *cable3TypeValue;
@property(nonatomic, strong) NSString *cable4TypeValue;

@property(nonatomic, strong) NSString *cable1LengthValue;
@property(nonatomic, strong) NSString *cable2LengthValue;
@property(nonatomic, strong) NSString *cable3LengthValue;
@property(nonatomic, strong) NSString *cable4LengthValue;

@property(nonatomic, strong) NSString *cable1QtyValue;
@property(nonatomic, strong) NSString *cable2QtyValue;
@property(nonatomic, strong) NSString *cable3QtyValue;
@property(nonatomic, strong) NSString *cable4QtyValue;

@property(nonatomic, strong) NSString *cablesReqLabelsValue;
@property(nonatomic, strong) NSString *rackTypeValue;
@property(nonatomic, strong) NSString *rackHeightValue;
@property(nonatomic, strong) NSString *rackWidthValue;
@property(nonatomic, strong) NSString *rackDepthValue;
@property(nonatomic, strong) NSString *anchorValue;
@property(nonatomic, strong) NSString *groundValue;
@property(nonatomic, strong) NSString *laddersValue;
@property(nonatomic, strong) NSString *waterfallsValue;
@property(nonatomic, strong) NSString *vertMgrWidthValue;
@property(nonatomic, strong) NSString *horzMgrWidthValue;
@property(nonatomic, strong) NSString *pduTypeValue;
@property(nonatomic, strong) NSString *pdu01SourceValue;
@property(nonatomic, strong) NSString *pdu02SourceValue;
@property(nonatomic, strong) NSString *upsModelValue;
@property(nonatomic, strong) NSString *upsSourceValue;
@property(nonatomic, strong) NSString *surgeSupValue;
@property(nonatomic, strong) NSString *freeUPSOutValue;
@property(nonatomic, strong) NSString *freeNonUPSOutValue;
@property(nonatomic, strong) NSString *locationNotesValue;
@property(nonatomic, strong) NSString *existEquipNotesValue;
@property(nonatomic, strong) NSString *existCableNotesValue;
@property(nonatomic, strong) NSString *rackNotesValue;
@property(nonatomic, strong) NSString *powerNotesValue;



+(MJSStringObjects *)singObj;




@end
