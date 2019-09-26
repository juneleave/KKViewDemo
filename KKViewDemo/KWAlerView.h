//
//  KWAlerView.h
//  Test
//
//  Created by world king on 2019/9/2.
//  Copyright © 2019 world king. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KWAlerView : UIView 

+ (KWAlerView *)shareInstance;
//- (void)showWithTitle:(NSString *)title message:(NSString *)msg viewController:(UIViewController *)vc;

- (void)showWithTitle:(NSString *)title message:(NSString *)msg viewController:(UIViewController *)vc clickAtIndex:(void (^)(int index))click;
@end

NS_ASSUME_NONNULL_END
