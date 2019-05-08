//
//  DetailViewController.m
//  TimerDemo
//
//  Created by zhanggui on 2019/5/8.
//  Copyright © 2019 zhanggui. All rights reserved.
//

#import "DetailViewController.h"
#import "ZGWeakTimerTarget.h"
@interface DetailViewController ()


@property (nonatomic, strong) NSTimer *timer;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.timer = [ZGWeakTimerTarget scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    [self.timer fire];
    
}
- (void)timerAction {
    NSLog(@"timer is running");
}
- (void)dealloc {
    NSLog(@"Detail VC dealloc ....");
}
@end
