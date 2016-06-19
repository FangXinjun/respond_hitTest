//
//  myBigView.m
//  事件响应
//
//  Created by myApplePro01 on 16/6/16.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "myBigView.h"

@implementation myBigView


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    UIView *view = [super hitTest:point withEvent:event];
    
//    if (!view) {
//        //坐标转换
//        CGPoint convertPoint = [self convertPoint:point toView:_viewm];
//        //接收_c返回的视图
//        UIView *subView = [_viewm hitTest:convertPoint withEvent:event];
//        if (subView) {
//            return subView;
//        }
//    }
    
    if (!view) {
        //坐标转换
        CGPoint convertPoint = [self convertPoint:point toView:_btn];
        //接收_btn返回的视图
        UIView *subView = [_btn hitTest:convertPoint withEvent:event];
        if (subView) {
            return subView;
        }
        
    }

    
    return view;

}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    BOOL isyes = [super pointInside:point withEvent:event];
    return isyes;
    // YES  继续遍历子控件  返回NO 调用hitTest方法 返回父视图事件响应对象
//    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"bigView - TouchesBegan");
    
}
@end
