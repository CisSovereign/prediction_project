//
//  CHViewController.m
//  CrystalBall
//
//  Created by Collin Hartigan on 1/18/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import "CHViewController.h"
#import "CHCrystalBall.h"
#import <AudioToolbox/AudioToolbox.h>

@interface CHViewController ()

@end

@implementation CHViewController {
    SystemSoundID soundEffect;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"ring" ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundURL), &soundEffect);
	
    self.crystalBall = [[CHCrystalBall alloc] init];
    
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed: @"1.png"],
                                                [UIImage imageNamed: @"2.png"],
                                                [UIImage imageNamed: @"3.png"],
                                                [UIImage imageNamed: @"4.png"],
                                                [UIImage imageNamed: @"5.png"],
                                                [UIImage imageNamed: @"6.png"],
                                                [UIImage imageNamed: @"7.png"],
                                                [UIImage imageNamed: @"8.png"],
                                                [UIImage imageNamed: @"9.png"],
                                                [UIImage imageNamed: @"10.png"],
                                                [UIImage imageNamed: @"11.png"],
                                                [UIImage imageNamed: @"12.png"],
                                                [UIImage imageNamed: @"13.png"],
                                                [UIImage imageNamed: @"14.png"],
                                                [UIImage imageNamed: @"15.png"],
                                                [UIImage imageNamed: @"16.png"],
                                                [UIImage imageNamed: @"17.png"],
                                                [UIImage imageNamed: @"18.png"],
                                                [UIImage imageNamed: @"19.png"],
                                                [UIImage imageNamed: @"20.png"],
                                                [UIImage imageNamed: @"21.png"],
                                                [UIImage imageNamed: @"22.png"],
                                                [UIImage imageNamed: @"23.png"],
                                                [UIImage imageNamed: @"24.png"],nil];
    self.backgroundImageView.animationDuration = 1.0f;
    self.backgroundImageView.animationRepeatCount = 1;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    [self.backgroundImageView startAnimating];
    self.predictionLabel.alpha = 0.0f;
    [self makePrediction];
}

#pragma mark - Prediction

- (void) makePrediction {
    [self.backgroundImageView startAnimating];
    self.predictionLabel.text = [self.crystalBall randomPrediction];
    AudioServicesPlaySystemSound(soundEffect);
    [UIView animateWithDuration:1.5 animations:^{
        self.predictionLabel.alpha = 1.0f;
    }];
}

#pragma mark - Motion Events

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
}

#pragma mark - Touch Events

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

@end
