//
//  TokenController.h
//  RizeerClientIos
//
//  Created by Youssef Amri on 09/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface TokenController : NSUserDefaults

@property NSString *tokenKeyValue;

-(Boolean) receptionTicket;
-(Boolean) envoyerTiket;
-(Boolean) fermetureSession;

@end
