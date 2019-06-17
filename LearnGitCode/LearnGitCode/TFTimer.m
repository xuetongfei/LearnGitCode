//
//  TFTimer.m
//  LearnGitCode
//
//  Created by TF on 2018/11/1.
//  Copyright © 2018年 TF. All rights reserved.
//

#import "TFTimer.h"

@interface TFTimer ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TFTimer

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.timer fire];
        NSLog(@"%@",self);
    }
    return self;
}

- (NSTimer *)timer {
    if (nil == _timer) {
        _timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(timeAction:) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    }
    return _timer;
}

- (void)timeAction:(NSTimer *)t {
    
}

@end
