//
//  UIResponder+BDAddition.h
//  BDKit
//
//  Created by Suteki on 2016/10/12.
//  Copyright © 2016年 Baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (BDAddition)

/**
 发送事件

 @param eventName 事件名
 @param userInfo 自定义参数
 */
- (void)sendEventWithName:(NSString *)eventName userInfo:(id)userInfo;


/**
 响应事件

 @param eventName 事件名
 @param userInfo 自定义参数
 @return 是否继续往next responder派发事件
 */
- (BOOL)responderDidReceiveEvent:(NSString *)eventName userInfo:(id)userInfo;

@end
