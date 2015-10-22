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
    
    self.lblMsg.text = @"订单总额：100元";

    
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
 *  begin pay
 *
 *  @param sender the button
 */
- (IBAction)doPay:(id)sender {
    
    PayService *pService = [[PayService alloc] init];
    
    //暂时由于缺少相关字段，未对payReq进行封装。
    //［PayService sendPayRequest:payReq];
    
    //测试时，暂调用下面这个方法
    [pService startPay];
    
}



@end
