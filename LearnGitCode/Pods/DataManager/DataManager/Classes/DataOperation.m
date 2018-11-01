//
//  DataOperation.m
//  DataManager_Example
//
//  Created by TF on 2018/10/31.
//  Copyright © 2018年 xuetongfei. All rights reserved.
//

#import "DataOperation.h"

@implementation DataOperation

+ (instancetype)sharedDataOperation {
    static DataOperation *operation = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (nil == operation) {
            operation = [DataOperation new];
        }
    });
    return operation;
}

- (void)log {
    NSLog(@"%@",NSStringFromClass(self.class));
    NSLog(@"DataManager");
}

@end
