//
//  RNBridgeModule.m
//  RNTest
//
//  Created by grx on 2018/9/18.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "RNBridgeModule.h"

@implementation RNBridgeModule

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(backToViewController){
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter]postNotificationName:@"BackToViewController" object:nil];
    });
}

@end
