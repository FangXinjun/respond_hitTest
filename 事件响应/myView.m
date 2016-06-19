//
//  myView.m
//  事件响应
//
//  Created by myApplePro01 on 16/6/16.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "myView.h"

@implementation myView
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    UIView *view = [super hitTest:point withEvent:event];

//    if (!view) {
//        //坐标转换
//        CGPoint convertPoint = [self convertPoint:point toView:_btn];
//        //接收_btn返回的视图
//        UIView *subView = [_btn hitTest:convertPoint withEvent:event];
//        if (subView) {
//            return subView;
//        }
//
//    }
    
    return view;
    
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    BOOL isyes = [super pointInside:point withEvent:event];
    return isyes;
//    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
     NSLog(@"myView - TouchesBegan");
}
@end
