//
//  ViewController.m
//  RNTest
//
//  Created by grx on 2018/9/18.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "ViewController.h"
#import "RNViewController.h"
#import <React/RCTRootView.h>

@interface ViewController ()

@property(nonatomic,strong) UILabel *label;
@property(nonatomic,strong) UIButton *btn;

@end

@implementation ViewController

-(UIButton *)btn{
    // 添加跳转按钮
    if (_btn == nil) {
        _btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 40)];
        [_btn setTitle:@"跳转到RNController" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}

-(void)btnClick{
    // 按钮动作
    RNViewController *rnVC = [[RNViewController alloc]init];
    [self presentViewController:rnVC animated:YES completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.btn];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
