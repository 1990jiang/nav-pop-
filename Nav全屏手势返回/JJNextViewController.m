//
//  JJNextViewController.m
//  Nav全屏手势返回
//
//  Created by 蒋俊 on 17/4/21.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import "JJNextViewController.h"

@interface JJNextViewController ()

@end

@implementation JJNextViewController


//视图即将出现
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES];
    
    
}

//视图即将消失
-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    
    [self.navigationController setNavigationBarHidden:NO];
    
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 40);
    [btn setTitle:@"点我pop" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:btn];
}


//按钮监听事件
-(void)clickBtn{
    
    
    [self.navigationController popViewControllerAnimated:YES];
}



@end
