//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CentralizedMedicalRecords.h"

@class Patient;
@class CentralizedMedicalRecords;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;
@property (nonatomic, strong) NSMutableSet* acceptedPatients;
@property (nonatomic, strong) NSDictionary* diseases;
@property (nonatomic, strong) CentralizedMedicalRecords* records;

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization andRecords:(CentralizedMedicalRecords*)records;

-(void)prescribeMedicineTo:(Patient*)patient for:(NSString *)illness andLogInRecord:(CentralizedMedicalRecords*)records;

@end
