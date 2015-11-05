//
//  ViewController.m
//  Test
//
//  Created by 张晓飞 on 15/3/28.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#import "ViewController.h"
#import <PaySDK/PaySDK.h>


@interface ViewController ()
{
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
}




- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}


//释放资源
- (void)dealloc
{
    
}

/**
 *  生成订单号
 *
 *  @param kNumber 订单号的长度
 *
 *  @return 订单号
 */
- (NSString *)generateTradeNOWithNumber: (NSInteger)kNumber
{
    
    NSString *sourceStr = @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSMutableString *resultStr = [[NSMutableString alloc] init];
    srand((unsigned int)time(0));
    for (NSInteger i = 0; i < kNumber; i++)
    {
        unsigned index = rand() % [sourceStr length];
        NSString *oneStr = [sourceStr substringWithRange:NSMakeRange(index, 1)];
        [resultStr appendString:oneStr];
    }
    return resultStr;
}

/**
 *  begin pay
 *
 *  @param sender the button
 */
- (IBAction)doPay:(id)sender {
    
    ZXFPayRequest *payRequest = [[ZXFPayRequest alloc] init];
    payRequest.tradeNo = [self generateTradeNOWithNumber:16];
    payRequest.amount = @(0.01);
    payRequest.tradeTitle = @"测试";
    payRequest.tradeMsg = @"测试一分钱";
    payRequest.mobile = @"15818751003";
    payRequest.scheme = @"alipay2016";//实现了支付宝支付功能，该参数必须填。
    
    PayService *pService = [[PayService alloc] init];
    [pService sendPayRequest:payRequest response:^(NSError *error, ZXFPayResponse *response) {
        //处理相关回调逻辑
    }];
    
}



@end
