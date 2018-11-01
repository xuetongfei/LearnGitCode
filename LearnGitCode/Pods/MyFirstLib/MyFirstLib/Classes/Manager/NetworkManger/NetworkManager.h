//
//  NetworkManager.h
//  LearnGitCode
//
//  Created by TF on 2018/10/31.
//  Copyright © 2018年 TF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkManager : NSObject

+ (instancetype)sharedNetworkManger;

- (void)log;

@end

NS_ASSUME_NONNULL_END
