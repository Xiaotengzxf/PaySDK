//
//  PayRequest.h
//  PaySDK
//
//  Created by 张晓飞 on 15/10/16.
//  Copyright © 2015年 张晓飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXFPayRequest : NSObject

@property (nonatomic , strong) NSString *mobile;//手机号码
@property (nonatomic , strong) NSString *sign;//组合加密，可能有几种方式组合
@property (nonatomic , strong) NSString *tradeTitle;//商品标题
@property (nonatomic , strong) NSString *tradeMsg;//商品描述
@property (nonatomic , strong) NSNumber *amount;//订单金额
@property (nonatomic , strong) NSString *tradeNo;//订单号
@property (nonatomic , strong) NSString *scheme;   //支付宝支付跳转用的scheme
@property (nonatomic , strong) NSString *extra1;//自留字段为以后新增字段，暂未使用可为nil
@property (nonatomic , strong) NSString *extra2;//第三方使用，原样返回字符串
@property (nonatomic ,weak) id delegate;

//验证字段值
- (BOOL)validateValue;

@end
