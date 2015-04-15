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

-(Boolean) receptionTicket {
    Boolean result = true;
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://api.openbeerdatabase.com/v1/beers.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if ([(NSString *)responseObject isKindOfClass:[NSString class]]) {
            NSLog(@"result request: %@",(NSString *)responseObject);
            self.tokenKeyValue = responseObject;
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Something wrong append");
    }
     ];

    return result;
}
-(Boolean) envoyerTiket {
    Boolean result = true;
    
    return result;
}
-(Boolean) fermetureSession {
    Boolean result = true;
    
    return result;
}
@end
