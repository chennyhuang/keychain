//
//  CHKeychain.h
//  jinrishuyuan
//
//  Created by 黄振宇 on 2017/3/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface CHKeychain : NSObject
+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)deleteKeyChain:(NSString *)service;
@end
