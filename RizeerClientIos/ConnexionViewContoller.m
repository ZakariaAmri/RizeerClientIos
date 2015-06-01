//
//  ConnexionViewContoller.m
//  RizeerClientIos
//
//  Created by Youssef Amri on 08/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import "ConnexionViewContoller.h"
#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "AFHTTPRequestOperationManager.h"

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

- (IBAction)inscription:(id)sender {
    NSString *url = @"http://localhost:9000/inscr/";
    url = [url stringByAppendingString:_login.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_passeword.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_mail.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_pseudo.text];
    /* Requet synchrone
    NSURL *change = [NSURL URLWithString:url];
    NSURLRequest *test = [NSURLRequest requestWithURL:change];
    NSURLResponse *response;
    NSError *error;
    NSData *donnee = [NSURLConnection sendSynchronousRequest:test returningResponse:&response error:&error];
    NSString *reponseString = [ [ NSString alloc] initWithData:donnee encoding:NSUTF8StringEncoding];
    if (!error)
        NSLog(@"%@",reponseString);
    else
        NSLog(@"%@",error);
    */
    //Requet asynchrone
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];
    NSString *reponseString = [ [ NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (error == nil)
    {
        NSLog(@"%@",error);
    }
    NSLog(@"%@",reponseString);
    NSLog(@"%@",url);
   
}
- (IBAction)connexion:(id)sender {
    NSString *token;
    NSString *url = @"http://localhost:9000/connex/";
    url = [url stringByAppendingString:_mailCo.text];
    url = [url stringByAppendingString:@"/"];
    url = [url stringByAppendingString:_passCo.text];
    /*
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];
    NSString *reponseString = [ [ NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (error == nil)
    {
        NSLog(@"%@",error);
    }*/
    NSURL *change = [NSURL URLWithString:url];
    NSURLRequest *test = [NSURLRequest requestWithURL:change];
    NSURLResponse *response;
    NSError *error;
    NSData *donnee = [NSURLConnection sendSynchronousRequest:test returningResponse:&response error:&error];
    NSString *reponseString = [ [ NSString alloc] initWithData:donnee encoding:NSUTF8StringEncoding];
    if (!error)
        NSLog(@" ! error : %@",reponseString);
    else
        NSLog(@"error  : %@",error);
    NSLog(@" test  Connexion= %@",reponseString);
    NSLog(@"url= %@",url); 
    
    
    TokenController *t = [[TokenController alloc] init];
    [t initTicket:reponseString] ;
    token = [t envoyerTiket];
    NSLog(@"Le ticket est : %@",token);
    
    /*test  */
    NSString *url2 = @"http://localhost:9000/visuaMyAcc/";
    url2 = [url2 stringByAppendingString:token];
    NSURL *change2 = [NSURL URLWithString:url];
    NSURLRequest *test2 = [NSURLRequest requestWithURL:change2];
    NSURLResponse *response2;
    NSError *error2;
    NSData *donnee2 = [NSURLConnection sendSynchronousRequest:test2 returningResponse:&response2 error:&error2];
    NSString *reponseString2 = [ [ NSString alloc] initWithData:donnee2 encoding:NSUTF8StringEncoding];
    if (!error2)
        NSLog(@" ! error : %@",reponseString2);
    else
        NSLog(@"error  : %@",error2);
    NSLog(@" test  Profil= %@",reponseString2);
    NSLog(@"url= %@",url2);
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*
    connexionB.layer.borderWidth = 1.0f;
    connexionB.layer.cornerRadius = 10;
    connexionB.layer.borderColor = [[UIColor grayColor] CGColor];
     */
    //_segment.selectedSegmentIndex = 1;
    /*
    _connexionV.hidden = YES;
    _inscriptionV.hidden = NO;
    _visiteV.hidden = YES;
     */
    NSString *token;
    self.navigationItem.titleView = self.segment;
    TokenController *t = [[TokenController alloc] init];
    token = [t envoyerTiket];
    NSLog(@"Le ticket est : %@",token);

    
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
