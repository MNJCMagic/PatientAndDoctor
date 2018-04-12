//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;

-(instancetype)initWithName:(NSString*)name specialization:(NSString*)specialization;

@end
