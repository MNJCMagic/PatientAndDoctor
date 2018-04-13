//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "CentralizedMedicalRecords.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization andRecords:(CentralizedMedicalRecords*)records
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableSet alloc] init];
        _diseases = @{
                      @"headache" : @"tylenol",
                        @"cancer" : @"chemotherapy",
                     @"infection" : @"antibiotics"
                                   };
    }
    return self;
}

-(void)prescribeMedicineTo:(Patient*)patient for:(NSString *)illness andLogInRecord:(CentralizedMedicalRecords*)records {
    NSLog(@"Patient %@ asks for help with %@.\n Doctor %@ prescribes %@", patient.name, illness, self.name, [self.diseases objectForKey:illness]);
    [records addPatient:patient.name andPrescription:[self.diseases objectForKey:illness]];
    
}

@end
