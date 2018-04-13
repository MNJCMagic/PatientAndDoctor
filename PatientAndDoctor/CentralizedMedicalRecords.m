//
//  CentralizedMedicalRecords.m
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-12.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "CentralizedMedicalRecords.h"

@implementation CentralizedMedicalRecords

- (instancetype)init
{
    self = [super init];
    if (self) {
        _records = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void)addPatient:(NSString*)name andPrescription:(NSString*)prescription {
    
    if (!self.records[name]) {
        NSMutableArray *prescriptions = [NSMutableArray new];
        self.records[name] = prescriptions;
    }
    [self.records[name] addObject:prescription];

}

@end
