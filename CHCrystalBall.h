//
//  CHCrystalBall.h
//  CrystalBall
//
//  Created by Collin Hartigan on 1/19/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHCrystalBall : NSObject
@property (strong, nonatomic) NSArray *predictions; 

- (NSString *) randomPrediction;



@end
