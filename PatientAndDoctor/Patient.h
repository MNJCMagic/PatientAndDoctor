//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) NSInteger age;
@property BOOL healthCard;
//@property (nonatomic, weak) Doctor* doctor;

-(instancetype)initWithName:(NSString*)name age:(NSInteger)age healthCard:(BOOL)healthCard;
-(void)visitDoctor:(Doctor*)doctor;
-(void)requestMedicationfrom:(Doctor*)doctor for:(NSString*)illness;

@end
