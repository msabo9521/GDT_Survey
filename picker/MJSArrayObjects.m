//
//  MJSArrayObjects.m
//  picker
//
//  Created by Michael Sabo on 10/29/13.
//  Copyright (c) 2013 Michael Sabo. All rights reserved.
//

#import "MJSArrayObjects.h"




@implementation MJSArrayObjects

+ (NSMutableArray *)closetIDArray
{
   NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1MC1.3404", @"1MC2.2347", @"1SCR02-1008", @"1SCR04-1008", @"2SCR01-1010", @"2SCR02-1008", @"2SCR03-1008", @"2SCR04-1008", @"3SCRB3.3212", @"4SCR1.2062", @"ACB01-1330", @"ACB01-2433", @"ACB02-1935", @"ACB02-2643", @"ACB03-2380 (UTPD)", @"ACB04-1697", @"ACB04-2193", @"ACB04-2397", @"ACB05-1697", @"ACB05-2193", @"ACB05-2397", @"ACB06-1697", @"ACB06-2193", @"ACB06-2397", @"ACB07-1697", @"ACB07-2193", @"ACB07-2397", @"ACB08-1697", @"ACB08-2193", @"ACB08-2397", @"ACB3.2360", @"ACB3.2360", @"ACBp1-2292", @"ACBP1-2647", @"ACBP1-2825", @"B01-4358", @"B01-4402", @"B01-4513", @"B01-4801", @"B01-4875", @"B02-4486", @"B02-4937", @"b03-4350", @"B03-4937", @"B04-4943", @"B05-4350", @"B05-4526", @"B05-4879", @"B06-4350", @"B06-4626", @"B07-4628", @"B07-4939", @"B08-4524", @"B08-4642", @"B08-4939", @"B0B-4802", @"B2.4302", @"B2.4302", @"B2.4618", @"B2.4618", @"CPB02-3064", @"cpb02-3084 3408", @"CPB03-3066", @"CPB03-3162", @"CPB04-3066", @"CPB04-3572", @"CPB05-3066", @"CPB05-3524", @"CPB06-3066", @"CPB06-3534", @"CPB07-3066", @"CPB07-3528", @"CPB08-3126", @"CPB08-3607", @"CPB1.3201", @"CPB1.3201", @"CPBp1-3064", @"DCG", @"ERD01-351A", @"FC02-1021", @"FC03-1021", @"FC04-1021", @"FC05-1021", @"FC06-1021", @"FC07-1021", @"FC08-1021", @"FC09-1021", @"FC1-1021 (Access)", @"FC1.1021 (Dist)", @"FC10-1021", @"FC11-1021", @"FC12-1021", @"FC13-1021", @"FCT01-4034", @"FCT01-4059", @"FCT02-4034", @"FCT02-4069", @"FCT03-4034", @"FCT03-4069", @"FCT04-4069", @"FCT05-4034", @"FCT05-4069", @"FCT06-4034", @"FCT06-4069", @"FCT07-4034", @"FCT07-4069", @"FCT08-4034", @"FCT08-4069", @"FCT09-4034", @"FCT09-4069", @"FCT10-4034", @"FCT10-4069", @"FCT11-4034", @"FCT11-4069", @"FCT12-4034", @"FCT12-4069", @"FCT13-4036", @"FCT13-4069", @"FCT14-4034", @"FCT14-4069", @"FCT15-4034", @"FCT15-4069", @"FCT16-4034", @"FCT16-4069", @"FCT17-4034", @"FCT17-4069", @"FCT18-4034", @"FCT18-4069", @"FCT19-4034", @"FCT19-4069", @"FCT20-4034", @"FCT20-4069", @"FCT21-4034", @"FCT21-4069", @"FCT4.4034", @"FCT4.4034", @"FHB01-121  1022", @"FHB01-2002A", @"FHB02-240d 1072", @"FHB03-380 1031", @"FHB04-1042", @"FHB05-0010", @"FHB06-1025", @"FHB07-704", @"FHB08-1137", @"FHB09-0004 0009", @"FHB10-1033 0033", @"FHB11-1045", @"FHB5.0010", @"FHBM-0002 0006", @"G02-3710", @"G04-3414", @"G04-3714", @"G06-3414", @"G06-3714", @"G07-3413", @"G07-3613", @"G09-3413", @"G09-3613", @"G0B-3331", @"G0B-3420", @"G10-3413", @"G10-3613", @"G11-3413", @"G11-3613", @"G12-3413", @"G12-3613", @"G14.3401", @"G15-3302", @"G15-3352", @"G16-3302", @"G16-3352", @"G17-3302", @"G17-3352", @"G18-3302", @"G18-3352", @"G19-3302", @"G19-3352", @"G2.3410", @"G2.3410", @"G2.3410", @"G23-3407", @"HHB1-1032", @"MOD02-m006", @"OMA02-1022", @"P02-3001", @"P03-3131", @"P04-3131", @"P05-3131", @"P06-3131", @"P07-3131", @"P08-3131", @"P09-3131", @"P0B-3010a", @"P10-3131", @"P11-3129", @"P12-3133", @"PGA03-1007", @"PPB01-624", @"PPB01-E350", @"PPB02-E400", @"PPB02-M320", @"PPB1-401", @"PPB2.M320", @"PTC01-2101 (SRVRRM)", @"PTC0b-2127", @"R02-1466", @"R02-2506a", @"R03-1185", @"R03-2374a", @"R04-1004", @"R04-1404", @"R04-1646", @"R04-1802", @"R04-2347", @"R05-2121", @"R05-2352a", @"R06-1288", @"R06-1590", @"R06-1802", @"R06-2123", @"R07-1201", @"R07-1460", @"R07-1594", @"R07-1802", @"R07-2462a", @"R08-1201", @"R08-1590", @"R08-1802", @"R08-2360a", @"R09-1482", @"R09-1586", @"R09-1802", @"R09-2305", @"R0b-1614", @"R0b-2564", @"R0b-2803a", @"R10-1201", @"R10-1408", @"R10-1604", @"R10-1896", @"R10-2347", @"R11-1029", @"R11-1607", @"R11-2350a", @"R11.2357", @"R12.1125", @"R8-2309", @"S01-8074", @"S01-8341", @"S04-8114", @"S04-8308", @"S06-8108", @"S06-8308", @"S08-8108", @"S0b-8108", @"S0b-8303", @"S1", @"S10-8108", @"S10-8308", @"S12-8108", @"S12-8308", @"S16-8108", @"S16-8308", @"SCRB1.1010", @"T09-3823", @"T09-3881", @"T0B-3914", @"T0B-4172", @"T2.3932", @"WPS01-1310", @"WPS01-2036A", @"WPS01-4066", @"WPS02-1162", @"Y01-5739", @"Y02-5721", @"Y02-5728", @"Y02-6025", @"Y03-5660", @"Y04-6001", @"Y05-6001", @"Y06-5636", @"Y07-6001", @"Y08-5642", @"Y0B-5704", nil];
    return array;
}
+ (NSMutableArray *)buildingArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1MC", @"1SCRB", @"2SCRB", @"3SCRB", @"4SCRB", @"ACB", @"ALKEK", @"BLUE", @"BSRB", @"CPB", @"DCG", @"EL RIO D", @"FC", @"FCT", @"FHB", @"HOLLY HALL", @"MOD", @"OAM", @"PAWNEE", @"PPB", @"PRESSLER GARAGE", @"PTC", @"PURPLE", @"ROSE", @"TAN", @"YELLOW", nil];
    return array;
}
+ (NSMutableArray *)buildingNameArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"Charles A. LeMaistre Clinic", @"R. Lee Clark Clinic (1978)", @"Margaret and Ben Love Clinic", @"Clinical Research Building", @"Chapel", @"Mid Campus Building 1", @"John Mendelsohn Faculty Center", @"T. Boone Pickens Academic Tower", @"Anderson Central", @"Anderson West", @"Anderson East", @"Gimbel", @"Dock Building", @"Albert B. and Margaret M. Alkek Hospital", @"George and Cynthia Mitchell Basic Sciences Research Building", @"George and Cynthia Mitchell BSRB", @"Clinical Research Building", @"Lutheran Pavillion", @"Bates - Freeman", @"Percy&Ruth Loggett Jones Research", @"Fannin Holcombe Building", @"So Campus Research Bldg 1", @"So Campus Research Bldg 2", @"So Campus Research Bldg 3", @"So Campus Research Bldg 4", @"Mays Clinic", @"Dan L. Duncan Building", @"Pressler Street Garage", @"Physical Plant And Police Bldg", @"Modular Labs", @"Operations and Maintenance Building", @"Proton Therapy Center (Not Institutional MDACC)", @"Remote Data Center (Guhn Rd)", @"El Rio St. Lab", @"Holly Hall Building 2555", @"Warehouse Complex - Pawnee Street", nil];
    return array;
}

+ (NSMutableArray *)roomAccessArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"Badge", @"Key", nil];
    return array;
}
+ (NSMutableArray *)switchModelArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"Cisco Cat.2960 Series ", @"Cisco Cat.2960-C Series ", @"Cisco Cat.2960-S Series ", @"Cisco Cat.3560-C ", @"Cisco Cat.3560-X Series ", @"Cisco Cat.3560V2 Series", @"Cisco Cat.3750-X Series ", @"Cisco Cat.3750v2 Series ", @"Cisco Cat.4500 Series", @"Cisco Cat.4500-X Series", @"Cisco Cat.4900 Series ", @"Cisco Cat.6500 Series ", @"Nexus 1000V Series", @"Nexus 2000 Series ", @"Nexus 3000 Series", @"Nexus 4000 Series   ", @"Nexus 5000 Series", @"Nexus 7000 Series ", nil];
    return array;
}
+ (NSMutableArray *)boolArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"Yes", @"No", nil];
    return array;
}
+ (NSMutableArray *)cableTypeArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"Category 5", @"Category 5e", @"Category 6", @"Category 6e", @"MMF 50 Micron", @"MMF 62.5 Micron", @"SMF", nil];
    return array;
}
+ (NSMutableArray *)connectorArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"RJ45", @"LC to LC", @"LC to SC", @"LC to ST", @"SC to ST", @"SC to SC", nil];
    return array;
}
+ (NSMutableArray *)rackTypeArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"19in. Relay Rack", @"23in. Relay Rack", @"Data Cabinet", @"Four Post Rack", nil];
    return array;
}
+ (NSMutableArray *)upsModelArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"APC SURT 350", @"APC SURT 400", @"APC SURT 450", @"APC SURT 500", @"APC SURT 550", @"APC SURT 600", @"APC SURT 650", @"APC SURT 700", @"APC SURT 750", @"APC SURT 800", @"APC SURT 850", @"APC SURT 900", @"APC SURT 950", @"APC SURT 1000", @"APC SURT 1050", @"APC SURT 1100", @"APC SURT 1150", @"APC SURT 1200", @"APC SURT 1250", @"APC SURT 1300", @"APC SURT 1350", @"APC SURT 1400", @"APC SURT 1450", @"APC SURT 1500", @"APC SURT 1550", @"APC SURT 1600", @"APC SURT 1650", @"APC SURT 1700", @"APC SURT 1750", @"APC SURT 1800", @"APC SURT 1850", @"APC SURT 1900", @"APC SURT 1950", @"APC SURT 2000", @"APC SURT 2050", @"APC SURT 2100", @"APC SURT 2150", @"APC SURT 2200", @"APC SURT 2250", @"APC SURT 2300", @"APC SURT 2350", @"APC SURT 2400", @"APC SURT 2450", @"APC SURT 2500", @"APC SURT 2550", @"APC SURT 2600", @"APC SURT 2650", @"APC SURT 2700", @"APC SURT 2750", @"APC SURT 2800", @"APC SURT 2850", @"APC SURT 2900", @"APC SURT 2950", @"APC SURT 3000", @"APC SURT 3050", @"APC SURT 3100", @"APC SURT 3150", @"APC SURT 3200", @"APC SURT 3250", @"APC SURT 3300", @"APC SURT 3350", @"APC SURT 3400", @"APC SURT 3450", @"APC SURT 3500", @"APC SURT 3550", @"APC SURT 3600", @"APC SURT 3650", @"APC SURT 3700", @"APC SURT 3750", @"APC SURT 3800", @"APC SURT 3850", @"APC SURT 3900", @"APC SURT 3950", @"APC SURT 4000", @"APC SURT 4050", @"APC SURT 4100", @"APC SURT 4150", @"APC SURT 4200", @"APC SURT 4250", @"APC SURT 4300", @"APC SURT 4350", @"APC SURT 4400", @"APC SURT 4450", @"APC SURT 4500", @"APC SURT 4550", @"APC SURT 4600", @"APC SURT 4650", @"APC SURT 4700", @"APC SURT 4750", @"APC SURT 4800", @"APC SURT 4850", @"APC SURT 4900", @"APC SURT 4950", @"APC SURT 5000", @"APC SURT 5050", @"APC SURT 5100", @"APC SURT 5150", @"APC SURT 5200", @"APC SURT 5250", @"APC SURT 5300", @"APC SURT 5350", @"APC SURT 5400", @"APC SURT 5450", @"APC SURT 5500", @"APC SURT 5550", @"APC SURT 5600", @"APC SURT 5650", @"APC SURT 5700", @"APC SURT 5750", @"APC SURT 5800", @"APC SURT 5850", @"APC SURT 5900", @"APC SURT 5950", @"APC SURT 6000", @"APC SURT 6050", @"APC SURT 6100", @"APC SURT 6150", @"APC SURT 6200", @"APC SURT 6250", @"APC SURT 6300", @"APC SURT 6350", @"APC SURT 6400", @"APC SURT 6450", @"APC SURT 6500", @"APC SURT 6550", @"APC SURT 6600", @"APC SURT 6650", @"APC SURT 6700", @"APC SURT 6750", @"APC SURT 6800", @"APC SURT 6850", @"APC SURT 6900", @"APC SURT 6950", @"APC SURT 7000", @"APC SURT 7050", @"APC SURT 7100", @"APC SURT 7150", @"APC SURT 7200", @"APC SURT 7250", @"APC SURT 7300", @"APC SURT 7350", @"APC SURT 7400", @"APC SURT 7450", @"APC SURT 7500", @"APC SURT 7550", @"APC SURT 7600", @"APC SURT 7650", @"APC SURT 7700", @"APC SURT 7750", @"APC SURT 7800", @"APC SURT 7850", @"APC SURT 7900", @"APC SURT 7950", @"APC SURT 8000", @"APC SURT 8050", @"APC SURT 8100", @"APC SURT 8150", @"APC SURT 8200", @"APC SURT 8250", @"APC SURT 8300", @"APC SURT 8350", @"APC SURT 8400", @"APC SURT 8450", @"APC SURT 8500", @"APC SURT 8550", @"APC SURT 8600", @"APC SURT 8650", @"APC SURT 8700", @"APC SURT 8750", @"APC SURT 8800", @"APC SURT 8850", @"APC SURT 8900", @"APC SURT 8950", @"APC SURT 9000", nil];
    return array;
}
+ (NSMutableArray *)pduModelArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"AP7900", @"AP7901", @"AP7902", @"AP7902J", @"AP7911A", @"AP7920", @"AP7921", @"AP7922", @"AP7930", @"AP7930J", @"AP7931", @"AP7932", @"AP7932J", @"AP7950", @"AP7960", @"AP7968", @"AP7990", @"AP7998", @"AP8941", @"AP8953", @"AP8958", @"AP8958EU3", @"AP8958NA3", @"AP8959", @"AP8959EU3", @"AP8959NA3", @"AP8961", @"AP8965", @"AP8981", nil];
    return array;
}
+ (NSMutableArray *)plugTypeArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"L6-5", @"L6-10", @"L6-15", @"L6-20", @"L6-25", @"L6-30", @"L6-35", @"L6-40", @"110V", @"C13", @"C14", @"C15", @"C16", @"C17", @"C18", @"C19", @"C20", nil];
    return array;
}
+ (NSMutableArray *)powerOutletArray
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"UPS Backed", @"Non UPS Backed", @"UPS Port", @"Not Applicable", nil];
    return array;
}


@end
