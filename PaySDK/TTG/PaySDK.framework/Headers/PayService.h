//
//  PayService.h
//  PaySDK
//
//  Created by 张晓飞 on 15/8/27.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#ifndef PAYSERVICE_H
#define PAYSERVICE_H

#import <Foundation/Foundation.h>
#import "ZXFPayRequest.h"
#import "ZXFPayResponse.h"

typedef void (^ResponseCallBack)(NSError *error , ZXFPayResponse *response);

@interface PayService : NSObject

//发送支付请求
- (void)sendPayRequest:(ZXFPayRequest *)payRequest response:(ResponseCallBack)response;

/**
 *  在ApplicationDelegate中调用，为微信、支付宝跳转。
 *
 *  @param url 路径
 */
+ (BOOL)openURL:(NSURL *)url;

/**
 *  激活支付插件
 *
 *  @param appId      分配获取到的AppId
 *  @param merchantId 分配获取到的merchantId
 *  @param wxId       如果集成了微信支付，则填写微信分配的AppId.可选
 *
 */
+ (void)initWithAppID:(NSString *)appId andMerchantId:(NSString *)merchantId andWeChatPay:(NSString *)wxId;


@end

#endif
