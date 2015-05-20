//
//  TokenController.m
//  RizeerClientIos
//
//  Created by Youssef Amri on 09/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import "TokenController.h"
#import "AFHTTPRequestOperationManager.h"

@implementation TokenController

-(NSString*) receptionTicket {
    NSString *result = nil;
    _tokenKeyValue = @"-1";
    NSString *url = @"http://localhost:9000/check/";
    url = [url stringByAppendingString:@"-1"];
    /*
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if ([(NSString *)responseObject isKindOfClass:[NSString class]]) {
            NSLog(@"result request: %@",(NSString *)responseObject);
            self.tokenKeyValue = responseObject;
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Something wrong append");
    }
     ];
    */
    
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
    NSLog(@" test  Token= %@",reponseString);
    NSLog(@"url= %@",url);
    _tokenKeyValue =reponseString;
    [[NSUserDefaults standardUserDefaults] setObject:_tokenKeyValue forKey:@"token id"];
    
    result = _tokenKeyValue;

    
    return result;
}
-(NSString*) envoyerTiket {
    
    return _tokenKeyValue;
}
-(NSString*) fermetureSession {
    
    [[NSUserDefaults standardUserDefaults] setObject:@"-1" forKey:@"token id"];
    return @"Deconnexion";
}





@end
