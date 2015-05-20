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
// Inscription
@property (strong, nonatomic) IBOutlet UITextField *login;
@property (strong, nonatomic) IBOutlet UITextField *pseudo;
@property (strong, nonatomic) IBOutlet UITextField *mail;
@property (strong, nonatomic) IBOutlet UITextField *passeword;
//Connexion
@property (strong, nonatomic) IBOutlet UITextField *mailCo;
@property (strong, nonatomic) IBOutlet UITextField *passCo;

- (IBAction)segmentValue:(id)sender;

- (IBAction)inscription:(id)sender;

@end
