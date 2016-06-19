//
//  ViewController.m
//  事件响应
//
//  Created by myApplePro01 on 16/6/16.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "ViewController.h"
#import "myBtn.h"
#import "myView.h"
#import "myBigView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myBigView *bigView = [[myBigView alloc] initWithFrame:CGRectMake(0, 100, 300, 200)];
    bigView.backgroundColor = [UIColor redColor];
    myView *view = [[myView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    view.backgroundColor = [UIColor grayColor];
    myBtn *btn = [[myBtn alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.center = CGPointMake(view.center.x, 0);
    btn.backgroundColor = [UIColor orangeColor];
    view.btn = btn;
    bigView.viewm = view;
    bigView.btn = btn;
    [bigView addSubview:view];
    [view addSubview:btn];
    [self.view addSubview:bigView];
    
    
}

- (void)btnClick:(UIButton *)btn{
    NSLog(@"btn");

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
