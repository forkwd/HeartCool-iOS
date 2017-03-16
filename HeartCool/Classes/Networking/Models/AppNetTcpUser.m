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

+ (void)createUserOrUpdateByApp:(NSString*)telephone passWord:(NSString*)passWord realName:(NSString*)realName sex:(NSString*)sex birthdate:(NSString*)birthdate age:(NSString*)age address:(NSString*)address block:(void (^)(bool sucess, NSString *userInfoId, NSError *error))block {
    [[HttpAPIClient sharedClient] GET:@"v1/user/createUserOrUpdateByApp" parameters:@{@"telephone": telephone, @"passWord": passWord, @"realName": realName, @"sex": sex, @"birthdate": birthdate, @"age": age, @"address": address} progress:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        bool sucess = [JSON valueForKeyPath:@"sucess"];
        NSString *userInfoId = [JSON valueForKeyPath:@"userInfoId"];
        block(sucess, userInfoId,nil);
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        block(NO, nil, error);
    }];
}

+ (void)queryAppUserInfoByInfoId:(NSString*)infoId block:(void (^)(bool sucess, id appUserInfo, NSError *error))block {
    [[HttpAPIClient sharedClient] GET:@"v1/user/queryAppUserInfoByInfoId" parameters:@{@"infoId": infoId} progress:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        bool sucess = [JSON valueForKeyPath:@"sucess"];
        id appUserInfo = [JSON valueForKeyPath:@"appUserInfo"];
        block(sucess, appUserInfo,nil);
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        block(NO, nil, error);
    }];
}

+ (void)queryInfoIdByAppUserCode:(NSString*)telephone block:(void (^)(bool sucess, NSString *infoId, NSString *message, NSError *error))block {
    [[HttpAPIClient sharedClient] GET:@"v1/user/queryInfoIdByAppUserCode" parameters:@{@"telephone": telephone} progress:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        bool sucess = [JSON valueForKeyPath:@"sucess"];
        NSString *infoId = [JSON valueForKeyPath:@"infoId"];
        NSString *message = [JSON valueForKeyPath:@"message"];
        block(sucess, infoId,message,nil);
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        block(NO, nil,nil, error);
    }];
}

@end
