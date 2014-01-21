//
//  CHCrystalBall.m
//  CrystalBall
//
//  Created by Collin Hartigan on 1/19/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import "CHCrystalBall.h"

@implementation CHCrystalBall

- (NSArray *) predictions {
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects:@"It is Certain",
                        @"It is decidedly so",
                        @"Niners will win",
                        @"I am awesome",
                        @"Why are we so cool?",
                        @"Patrick Willis",
                        nil];
    }
    
    return _predictions;
}

- (NSString *) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    
    return [self.predictions objectAtIndex:random];
}

@end
