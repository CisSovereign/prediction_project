//
//  CHViewController.m
//  CrystalBall
//
//  Created by Collin Hartigan on 1/18/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import "CHViewController.h"

@interface CHViewController ()

@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.predictions = [[NSArray alloc] initWithObjects:@"It is Certain",
                        @"It is decidedly so",
                        @"Niners will win",
                        @"I am awesome",
                        @"Why are we so cool?",
                         @"Patrick Willis",
                        nil];
   
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
 
    int random = arc4random_uniform(self.predictions.count);
    
    self.predictionLabel.text = [self.predictions objectAtIndex:random];
}
@end
