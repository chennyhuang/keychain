//
//  ViewController.m
//  xxxxxx
//
//  Created by 黄振宇 on 2017/3/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import "ViewController.h"
#import "UUID.h"
#import "MarcoDefines.h"
#import "CHKeychain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //删除钥匙串存放的值
//    [CHKeychain deleteKeyChain:KEY_USERNAME_PASSWORD];
    
    NSString * uuid= [UUID getUUID];
    NSLog(@"uuid=%@",uuid);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
