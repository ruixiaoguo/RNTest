//
//  RNViewController.m
//  RNTest
//
//  Created by grx on 2018/9/18.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "RNViewController.h"
#import <React/RCTRootView.h>

@interface RNViewController ()

@end

@implementation RNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * strUrl = @"http://127.0.0.1:8081/index.bundle?platform=ios&dev=true";
    NSURL * jsCodeLocation = [NSURL URLWithString:strUrl];
    
    RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                         moduleName:@"testRN"
                                                  initialProperties:nil
                                                      launchOptions:nil];
    self.view = rootView;
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(clickBack) name:@"BackToViewController" object:nil];
}

-(void)clickBack
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
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
