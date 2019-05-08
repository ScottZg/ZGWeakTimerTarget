//
//  WeakTimerTarget.m
//  TimerDemo
//
//  Created by zhanggui on 2019/5/8.
//  Copyright © 2019 zhanggui. All rights reserved.
//

#import "ZGWeakTimerTarget.h"


@interface ZGWeakTimerTarget ()

@property (nonatomic, weak) id target;
@property (nonatomic, assign) SEL selector;
@property (nonatomic, strong)NSTimer *timer;
@end

@implementation ZGWeakTimerTarget

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo {
    ZGWeakTimerTarget *weakTarget = [[ZGWeakTimerTarget alloc] init];
    weakTarget.target = aTarget;
    weakTarget.selector = aSelector;
    weakTarget.timer = [NSTimer scheduledTimerWithTimeInterval:ti target:weakTarget selector:@selector(fire:) userInfo:userInfo repeats:yesOrNo];
    return weakTarget.timer;
}
- (void)fire:(NSTimer *)timer {
    if (self.target) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self.target performSelector:self.selector withObject:timer.userInfo];
#pragma clang diagnostic pop
    }else {
        [self.timer invalidate];
    }
}
-(void)dealloc {
    NSLog(@"WeakTimer dealloc");
}
@end
