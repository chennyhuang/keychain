//
//  UUID.m
//  xxxxxx
//
//  Created by 黄振宇 on 2017/3/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import "UUID.h"
#import "CHKeychain.h"
#import "MarcoDefines.h"

@implementation UUID
+(NSString *)getUUID
{
    NSString * strUUID = (NSString *)[CHKeychain load:KEY_USERNAME_PASSWORD];
    
    //首次执行该方法时，uuid为空
    if ([strUUID isEqualToString:@""] || !strUUID)
    {
        //生成一个uuid的方法
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        
        //将该uuid保存到keychain
        [CHKeychain save:KEY_USERNAME_PASSWORD data:strUUID];
        
    }
    return strUUID;
}
@end
