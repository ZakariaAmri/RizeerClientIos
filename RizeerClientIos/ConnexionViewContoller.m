//
//  ConnexionViewContoller.m
//  RizeerClientIos
//
//  Created by Youssef Amri on 08/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import "ConnexionViewContoller.h"

@interface ConnexionViewContoller ()

@end

@implementation ConnexionViewContoller

- (IBAction)segmentValue:(id)sender {
    
    switch (_segment.selectedSegmentIndex) {
        case 0:
            _connexionV.hidden = YES;
            _inscriptionV.hidden = NO;
            _visiteV.hidden = YES;
            break;
        case 1 :
            _connexionV.hidden = NO;
            _inscriptionV.hidden = YES;
            _visiteV.hidden = YES;
            break;
        case 2:
            _connexionV.hidden = YES;
            _inscriptionV.hidden = YES;
            _visiteV.hidden = NO;
            break;
        default:
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*
    connexionB.layer.borderWidth = 1.0f;
    connexionB.layer.cornerRadius = 10;
    connexionB.layer.borderColor = [[UIColor grayColor] CGColor];
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
