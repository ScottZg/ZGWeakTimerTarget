//
//  ViewController.m
//  TimerDemo
//
//  Created by zhanggui on 2019/5/8.
//  Copyright © 2019 zhanggui. All rights reserved.
//

#import "ListViewController.h"
#import "DetailViewController.h"
@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)openDetailVCAction:(id)sender {
    DetailViewController *detailVC = [DetailViewController new];
    [self.navigationController pushViewController:detailVC animated:YES];
}

@end
