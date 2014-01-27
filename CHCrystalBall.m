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
        _predictions = [[NSArray alloc] initWithObjects:@"Sonic Spinball Is the Only Sonic Game to Feature Characters From the Archie Comics Continuity",
                        @"According to the Sonic Comic, Sonic’s Speed and Color Are a Result of a Lab Accident",
                        @"Sonic Cannot Swim Due to Mistaken Information About Real Hedgehogs",
                        @"Though Sonic Canonically Runs Faster Than Light, He Has Never Been Clocked at That Speed",
                        @"Sonic is Suicidal (in Sonic CD)",
                        @"Sega Used Fear to Combat Piracy",
                        @"The Sega Chant Took Up One Eighth of Sonic: The Hedgehog’s Data",
                        @"Sonic’s Skid Noise Comes from Outrun",
                        @"Sonic 3 and Sonic & Knuckles are Actually the Same Game",
                        @"Sega Most Likely Hired Michael Jackson to Compose Music for Sonic: The Hedgehog 3",
                        @"Sonic’s Color is a Marketing Scheme",
                        @"Vector: the Crocodile Was Originally a Sound Test",
                        @"Sonic Canonically Loves to Breakdance",
                        @"Sonic Has Multiple Birthdays",
                        @"Eggman Was Robotnik’s Original Japanese Name",
                        @"Sonic Was Originally Going to Have a Girlfriend Named Madonna",
                        @"Sonic’s Games Are Older Than He Is",
                        @"Sonic’s Archie Comics Series is the Longest Running Comic Series Based on a Video Game",
                        @"Sonic Was the First Video Game Character to Be in the Macy’s Thanksgiving Day Parade",
                        @"Sonic First Debuted in Rad Mobile as an Air Freshener",
                        @"Sonic’s Original Name was Mr. Needlemouse",
                        @"Eggman’s Moustache is Fake",
                        @"Nack the Weasel’s Real Name is Fang the Sniper",
                        @"Eggman Was Almost a Hero",
                        @"Sonic Was Almost Called Feel the Rabbit",
                        nil];
    }
    
    return _predictions;
}

- (NSString *) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    
    return [self.predictions objectAtIndex:random];
}

@end
