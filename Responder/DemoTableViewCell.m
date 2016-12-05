//
//  DemoTableViewCell.m
//  Responder
//
//  Created by Suteki on 2016/10/12.
//  Copyright © 2016年 Baidu. All rights reserved.
//

#import "DemoTableViewCell.h"
#import "UIResponder+BDAddition.h"

NSString * const kEventName = @"ButtonClick";

@implementation DemoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIButton *btn = [[UIButton alloc] initWithFrame:self.bounds];
        btn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        
        [btn addTarget:self action:@selector(handelButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:btn];
        
        static int number = 0;
        [btn setTitle:[NSString stringWithFormat:@"TITLE %d", number] forState:UIControlStateNormal];
        number++;
    }
    return self;
}

- (void)handelButtonEvent:(UIButton *)sender {
    [self dispatchEventWithName:kEventName userInfo:@{@"title" : [sender titleForState:UIControlStateNormal]}];
}

@end
