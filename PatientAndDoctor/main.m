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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *dave = [[Patient alloc] initWithName:@"Dave" age:39 healthCard:YES];
        
        Patient *debbie = [[Patient alloc] initWithName:@"Debbie" age:39 healthCard:NO];
        
        Doctor *doctorBob = [[Doctor alloc] initWithName:@"Doctor Bob" specialization:@"Urology"];
        
        [dave visitDoctor:doctorBob];
        [debbie visitDoctor:doctorBob];
        [dave requestMedicationfrom:doctorBob for:@"headache"];
        [debbie requestMedicationfrom:doctorBob for:@"headache"];
        [dave requestMedicationfrom:doctorBob for:@"cancer"];
    }
    return 0;
}
