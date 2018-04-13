//
//  main.m
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "CentralizedMedicalRecords.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CentralizedMedicalRecords *records = [[CentralizedMedicalRecords alloc] init];
        
        Patient *dave = [[Patient alloc] initWithName:@"Dave" age:39 healthCard:YES];
        
        Patient *debbie = [[Patient alloc] initWithName:@"Debbie" age:39 healthCard:NO];
        
        Doctor *doctorBob = [[Doctor alloc] initWithName:@"Bob" specialization:@"Urology" andRecords:records];
        
        [dave visitDoctor:doctorBob];
        [debbie visitDoctor:doctorBob];
        [dave requestMedicationfrom:doctorBob for:@"headache" andLogInRecords:records];
        [dave requestMedicationfrom:doctorBob for:@"cancer" andLogInRecords:records];
        
    }
    return 0;
}
