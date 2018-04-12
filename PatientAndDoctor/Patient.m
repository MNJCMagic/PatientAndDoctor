//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age healthCard:(BOOL)healthCard
{
    
        self = [super init];
        if (self) {
            _name = name;
            _age = age;
            _healthCard = healthCard;
        }
        return self;
    
}

-(void)visitDoctor:(Doctor*)doctor {
    
    if (self.healthCard) {
        [doctor.acceptedPatients addObject:self];
        NSLog(@"%@ accepts %@ as a new patient.", doctor.name, self.name);
    } else { NSLog(@"Sorry, %@ cannot accept %@ as a new patient - no health card!", doctor.name, self.name);
        
    }
    
}
@end
