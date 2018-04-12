//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) NSInteger age;

-(instancetype)initWithName:(NSString*)name age:(NSInteger)age;

@end
