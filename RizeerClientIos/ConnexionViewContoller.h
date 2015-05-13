//
//  ConnexionViewContoller.h
//  RizeerClientIos
//
//  Created by Youssef Amri on 08/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigationViewController.h"

@interface ConnexionViewContoller : UIViewController

@property IBOutlet UISegmentedControl *segment;
@property IBOutlet UIView *connexionV;
@property IBOutlet UIView *inscriptionV;
@property IBOutlet UIView *visiteV;


- (IBAction)segmentValue:(id)sender;

@end
