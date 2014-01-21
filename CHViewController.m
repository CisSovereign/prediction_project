//
//  CHViewController.m
//  CrystalBall
//
//  Created by Collin Hartigan on 1/18/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import "CHViewController.h"
#import "CHCrystalBall.h"

@interface CHViewController ()

@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.crystalBall = [[CHCrystalBall alloc] init];
 
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
 
    
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}
@end
