//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    
        self = [super init];
        if (self) {
            _name = name;
            _age = age;
        }
        return self;
    
}


@end
