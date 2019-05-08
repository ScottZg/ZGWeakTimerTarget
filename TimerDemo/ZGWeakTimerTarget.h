//
//  WeakTimerTarget.h
//  TimerDemo
//
//  Created by zhanggui on 2019/5/8.
//  Copyright © 2019 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZGWeakTimerTarget : NSObject


+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;
@end

NS_ASSUME_NONNULL_END
