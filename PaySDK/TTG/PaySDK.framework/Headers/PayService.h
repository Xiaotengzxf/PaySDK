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


@interface PayService : NSObject

- (void)startPay;

/**
 *  在ApplicationDelegate中调用，为微信、支付宝跳转。
 *
 *  @param url 路径
 */
+ (void)openURL:(NSURL *)url;


@end

#endif
