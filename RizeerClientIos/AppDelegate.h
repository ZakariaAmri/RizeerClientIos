//
//  AppDelegate.h
//  RizeerClientIos
//
//  Created by Youssef Amri on 02/04/2015.
//  Copyright (c) 2015 Youssef Amri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TokenController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property TokenController* ticket;

@end

