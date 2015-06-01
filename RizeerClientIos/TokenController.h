//
//  TokenController.h
//  RizeerClientIos
//
//  Created by Youssef Amri on 09/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface TokenController : NSObject

@property(strong,atomic) NSString *tokenKeyValue;
-(void) initTicket :(NSString *)ticket ;
-(NSString*) receptionTicket;
-(NSString*) envoyerTiket;
-(NSString*) fermetureSession;


@end
