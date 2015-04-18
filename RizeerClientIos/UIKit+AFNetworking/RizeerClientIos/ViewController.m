//
//  ViewController.m
//  RizeerClientIos
//
//  Created by Youssef Amri on 02/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _menu.target = self.revealViewController;
    _menu.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)qsf:(id)sender {
}
@end
