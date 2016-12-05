//
//  NavigationViewController.m
//  Responder
//
//  Created by Suteki on 2016/10/12.
//  Copyright © 2016年 Baidu. All rights reserved.
//

#import "NavigationViewController.h"
#import "UIResponder+BDAddition.h"
#import "DemoTableViewCell.h"

@interface NavigationViewController ()

@end


@implementation NavigationViewController

- (BOOL)responderDidReceiveEvent:(NSString *)eventName userInfo:(id)userInfo {
    if ([eventName isEqualToString:kEventName]) {
        NSLog(@"NavigationViewController - button click : %@", userInfo[@"title"]);
    }
    return YES;
}

@end
