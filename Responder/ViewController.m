//
//  ViewController.m
//  Responder
//
//  Created by Suteki on 2016/10/12.
//  Copyright © 2016年 Baidu. All rights reserved.
//

#import "ViewController.h"
#import "UIResponder+BDAddition.h"
#import "DemoTableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"TITLE ?";
}

- (BOOL)responderDidReceiveEvent:(NSString *)eventName userInfo:(id)userInfo {
    if ([eventName isEqualToString:kEventName]) {
        self.title = userInfo[@"title"];
        NSLog(@"ViewController - button click : %@", userInfo[@"title"]);
    }
    
    // 如果这里返回NO，则NavigationViewController不会收到该事件消息
    return YES;
}

#pragma - mark UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    DemoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[DemoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    return cell;
}


@end
