//
//  MJSStringObjects.m
//  GDT Surveyor
//
//  Created by Michael Sabo on 11/4/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import "MJSStringObjects.h"

@implementation MJSStringObjects
@synthesize closetIDValue;
@synthesize buildingValue;
@synthesize buildingFloorValue;
@synthesize roomAccessValue;
@synthesize buildingNameValue;
@synthesize buildingAddressValue;
@synthesize switchModelValue;
@synthesize switchIDValue;
@synthesize secSwitchValue;
@synthesize numSupValue;
@synthesize numBladesValue;
@synthesize swBottomRUValue;
@synthesize swTopRUValue;

@synthesize usedPortsValue;
@synthesize freePortsValue;

@synthesize cable1ConnectorValue;
@synthesize cable2ConnectorValue;
@synthesize cable3ConnectorValue;
@synthesize cable4ConnectorValue;

@synthesize cable1TypeValue;
@synthesize cable2TypeValue;
@synthesize cable3TypeValue;
@synthesize cable4TypeValue;

@synthesize cable1LengthValue;
@synthesize cable2LengthValue;
@synthesize cable3LengthValue;
@synthesize cable4LengthValue;

@synthesize cable1QtyValue;
@synthesize cable2QtyValue;
@synthesize cable3QtyValue;
@synthesize cable4QtyValue;

@synthesize cablesReqLabelsValue;
@synthesize rackTypeValue;
@synthesize rackHeightValue;
@synthesize rackWidthValue;
@synthesize rackDepthValue;
@synthesize anchorValue;
@synthesize groundValue;
@synthesize laddersValue;
@synthesize waterfallsValue;
@synthesize vertMgrWidthValue;
@synthesize horzMgrWidthValue;
@synthesize pduTypeValue;
@synthesize pdu01SourceValue;
@synthesize pdu02SourceValue;
@synthesize upsModelValue;
@synthesize upsSourceValue;
@synthesize surgeSupValue;
@synthesize freeUPSOutValue;
@synthesize freeNonUPSOutValue;
@synthesize locationNotesValue;
@synthesize existEquipNotesValue;
@synthesize existCableNotesValue;
@synthesize rackNotesValue;
@synthesize powerNotesValue;



+(MJSStringObjects *)singObj {
    static MJSStringObjects * single = nil;
    if (!single) {
        single = [[MJSStringObjects alloc] init];
    }
    return single;
    
}



@end
