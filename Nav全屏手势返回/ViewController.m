//
//  ViewController.m
//  Nav全屏手势返回
//
//  Created by 蒋俊 on 17/4/21.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import "ViewController.h"
#import "JJNextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    JJNextViewController *nextVc = [[JJNextViewController alloc]init];
    
    [self.navigationController pushViewController:nextVc animated:YES];
    
    
    
}


@end
