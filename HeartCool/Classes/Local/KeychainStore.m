//
//  KeychainStore.m
//  HeartCool
//
//  Created by Windom on 2017/3/24.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "KeychainStore.h"

#import "SAMKeychain.h"

#define ServiceUser @"ServiceUser"
#define ServiceDevices @"ServiceDevices"

@implementation KeychainStore

+ (NSString*)account {
    NSArray *array = [SAMKeychain accountsForService:ServiceUser];
    if ([array count] == 0) {
        return @"";
    }
    return array[0];
}

+ (NSString*)password:(NSString*)account {
    [SAMKeychain passwordForService:ServiceUser account:account];
}

+ (void)saveAccount:(NSString*)account passsword:(NSString*)passsword {
    [SAMKeychain setPassword:passsword forService:ServiceUser account:account];
}

+ (NSArray*)listBindDevices {
    return [SAMKeychain accountsForService:ServiceDevices];
}

@end
