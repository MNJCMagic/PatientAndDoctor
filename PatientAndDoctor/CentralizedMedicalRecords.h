//
//  CentralizedMedicalRecords.h
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-12.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CentralizedMedicalRecords : NSObject

@property (nonatomic, strong) NSMutableDictionary<NSString*,NSMutableArray<NSString*>*>*records;

-(void)addPatient:(NSString*)name andPrescription:(NSString*)prescription;

@end
