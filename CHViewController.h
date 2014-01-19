//
//  CHViewController.h
//  CrystalBall
//
//  Created by Collin Hartigan on 1/18/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;

@property (strong, nonatomic) NSArray *predictions;

- (IBAction)buttonPressed;


@end
