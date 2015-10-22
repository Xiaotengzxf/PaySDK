//
//  Product.h
//  PaySDK
//
//  Created by 张晓飞 on 15/8/28.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic, assign) float price;
@property (nonatomic, copy) NSString *subject;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, copy) NSString *orderId;


- (instancetype)initWithOrderIdLength:(NSInteger)orderIdLength;

@end
