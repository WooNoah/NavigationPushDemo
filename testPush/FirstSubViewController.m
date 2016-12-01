//
//  FirstSubViewController.m
//  testPush
//
//  Created by 吴迪 on 16/12/1.
//  Copyright © 2016年 吴迪. All rights reserved.
//

#import "FirstSubViewController.h"

@interface FirstSubViewController ()

@end

@implementation FirstSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Sub First";
    self.view.backgroundColor = [UIColor yellowColor];
    [self createButton];
    
}

- (void)createButton {
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(JumpAction) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(100, 100, 100, 44);
    [self.view addSubview:button];
}

- (void)JumpAction {
    self.navigationController.tabBarController.selectedIndex = 1;
    [self.navigationController popToRootViewControllerAnimated:YES];
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
