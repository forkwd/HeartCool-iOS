//
//  AppMessage.m
//  HeartCool
//
//  Created by wd on 2017/4/5.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "AppMessage.h"

@implementation AppMessage

- (instancetype)init:(int)newType Body:(NSData*)newBody
{
    self = [super init];
    if (self) {
        self->type = newType;
        self->body = newBody;
    }
    return self;
}

- (EcgMark*)extractMark {
    return nil;
}

@end
