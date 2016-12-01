//
//  FirstViewController.m
//  testPush
//
//  Created by 吴迪 on 16/12/1.
//  Copyright © 2016年 吴迪. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstSubViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"First";
    self.view.backgroundColor = [UIColor greenColor];
    [self createButton];
}

- (void)createButton {
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:@"JUMP" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(JumpAction) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(100, 100, 100, 44);
    [self.view addSubview:button];
}

- (void)JumpAction {
    FirstSubViewController *sub = [[FirstSubViewController alloc]init];
    sub.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:sub animated:YES];
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
