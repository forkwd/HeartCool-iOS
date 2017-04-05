//
//  AppTxQueue.m
//  HeartCool
//
//  Created by Windom on 2017/4/5.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "AppTxQueue.h"

@implementation AppTxQueue

WDSingletonM(AppTxQueue)

+ (AppTxQueue*)shared {
    return [self sharedAppTxQueue];
}

@end
