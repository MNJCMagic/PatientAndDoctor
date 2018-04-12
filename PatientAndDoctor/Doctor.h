//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;
@property (nonatomic, strong) NSMutableSet* acceptedPatients;

-(instancetype)initWithName:(NSString*)name specialization:(NSString*)specialization;


@end
