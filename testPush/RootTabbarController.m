//
//  RootTabbarController.m
//  testPush
//
//  Created by 吴迪 on 16/12/1.
//  Copyright © 2016年 吴迪. All rights reserved.
//

#import "RootTabbarController.h"
#import "FirstViewController.h"
#import "SecViewController.h"

@interface RootTabbarController ()

@end

@implementation RootTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configSubviews];
}

- (void)configSubviews {
    FirstViewController *fir = [[FirstViewController alloc]init];
    UINavigationController *firNav = [[UINavigationController alloc]initWithRootViewController:fir];
    firNav.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Fir" image:nil tag:1];
    
    SecViewController *sec = [[SecViewController alloc]init];
    UINavigationController *secNav = [[UINavigationController alloc]initWithRootViewController:sec];
    secNav.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Sec" image:nil tag:2];
    
    self.viewControllers = @[firNav,secNav];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
