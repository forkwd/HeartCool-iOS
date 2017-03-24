//
//  KeychainStore.h
//  HeartCool
//
//  Created by Windom on 2017/3/24.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeychainStore : NSObject

+ (NSString*)account;
+ (NSString*)password:(NSString*)account;
+ (void)saveAccount:(NSString*)account passsword:(NSString*)passsword;

@end
