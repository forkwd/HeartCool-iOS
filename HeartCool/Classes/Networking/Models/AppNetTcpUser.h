//
//  AppNetTcpUser.h
//  HeartCool
//
//  Created by Windom on 2017/3/15.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppNetTcpUser : NSObject

+ (void)validateUserName:(NSString*)name password:(NSString*)pwd block:(void (^)(bool sucess, NSString *message, NSError *error))block;

@end
