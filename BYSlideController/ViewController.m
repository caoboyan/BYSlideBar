//
//  ViewController.m
//  BYSlideController
//
//  Created by Boyan Cao on 16/3/29.
//  Copyright © 2016年 2015-293. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self addOneChildVc:[[UIViewController alloc] init] title:@"待付款"];
    [self addOneChildVc:[[UIViewController alloc] init] title:@"待发货"];
    [self addOneChildVc:[[UIViewController alloc] init] title:@"待收货"];
    [self addOneChildVc:[[UIViewController alloc] init] title:@"已完成"];
    [self addOneChildVc:[[UIViewController alloc] init] title:@"已关闭"];
}

- (void)addOneChildVc:(UIViewController *)vc title:(NSString *)title {
    vc.tabBarItem.title = title;
    [self addChildViewController:vc];
}

- (void)clickWithAnimation:(UIButton *)buttonItem {
    [super clickWithAnimation:buttonItem];
    NSLog(@"%zd",self.selectedIndex);
}

@end
