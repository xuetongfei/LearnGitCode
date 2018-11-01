//
//  NetworkManager.m
//  LearnGitCode
//
//  Created by TF on 2018/10/31.
//  Copyright © 2018年 TF. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager

+ (instancetype)sharedNetworkManger {
    static NetworkManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (nil == manager) {
            manager = [[NetworkManager alloc] init];
        }
    });
    return manager;
}

- (void)log {
    NSLog(@"NetworkManger");
}

@end
