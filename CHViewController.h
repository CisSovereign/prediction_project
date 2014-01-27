//
//  CHViewController.h
//  CrystalBall
//
//  Created by Collin Hartigan on 1/18/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CHCrystalBall;


@interface CHViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;

@property (strong, nonatomic) CHCrystalBall *crystalBall;

- (void) makePrediction;

- (IBAction)buttonPressed;

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end
