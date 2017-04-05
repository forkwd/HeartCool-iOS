//
//  AppTxQueue.h
//  HeartCool
//
//  Created by Windom on 2017/4/5.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WDSingleton.h"

@interface AppTxQueue : NSObject

WDSingletonH(AppTxQueue)

+ (AppTxQueue*)shared;

@end
