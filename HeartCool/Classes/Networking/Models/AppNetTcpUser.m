//
//  AppNetTcpUser.m
//  HeartCool
//
//  Created by Windom on 2017/3/15.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "AppNetTcpUser.h"

#import "HttpAPIClient.h"

@implementation AppNetTcpUser

+ (void)validateUserName:(NSString*)name password:(NSString*)pwd block:(void (^)(bool sucess, NSString *message, NSError *error))block {
    [[HttpAPIClient sharedClient] GET:@"v1/user/validate" parameters:@{@"userCode": name, @"pwd": pwd} progress:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        bool sucess = [JSON valueForKeyPath:@"sucess"];
        NSString *message = [JSON valueForKeyPath:@"message"];
        block(sucess, message,nil);
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        block(NO, nil, error);
    }];
}

@end
