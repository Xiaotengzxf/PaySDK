//
//  ZXFPayResponseModel.h
//  PaySDK
//
//  Created by 张晓飞 on 15/11/3.
//  Copyright © 2015年 张晓飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXFPayResponse : NSObject

@property (nonatomic , assign) NSInteger payResult;//支付结果：1、成功 2、失败 3、其他原因
@property (nonatomic , strong) NSString *tradeNo;//订单号
@property (nonatomic , strong) NSString *orderId;//PaySDK平台生成的订单号
@property (nonatomic , assign) NSInteger payCode;//支付类型：1、支付宝 2、微信 3、银联
@property (nonatomic , strong) NSString *payAccount;//支付账号
@property (nonatomic , strong) NSString *tradeDate;//支付日起
@property (nonatomic , strong) NSString *extra1;//支付预留字段
@property (nonatomic , strong) NSString *extra2;//原样返回字段

@end
