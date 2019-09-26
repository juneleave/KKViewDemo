//
//  KWAlerView.m
//  Test
//
//  Created by world king on 2019/9/2.
//  Copyright © 2019 world king. All rights reserved.
//

#import "KWAlerView.h"

static KWAlerView *kwAlertView;

@implementation KWAlerView

+ (KWAlerView *)shareInstance {
    if (kwAlertView == nil) {
        kwAlertView = [[KWAlerView alloc] init];
    }
    return kwAlertView;
}

- (void)showWithTitle:(NSString *)title message:(NSString *)msg viewController:(UIViewController *)vc clickAtIndex:(void (^)(int index))click {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"撤回审核" message:@"是否确定撤回审核？" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        click(0);
    }];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        click(1);
       
    }];
    [alert addAction:cancle];
    [alert addAction:ok];
    [vc presentViewController:alert animated:YES completion:nil];
}

@end
