//
//  JJNavigationController.m
//  Nav全屏手势返回
//
//  Created by 蒋俊 on 17/4/21.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

#import "JJNavigationController.h"
#import <objc/runtime.h>

@interface JJNavigationController ()

@end

@implementation JJNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSArray *targets = [self.interactivePopGestureRecognizer valueForKey:@"_targets"];
    // NSLog(@"targets中的东西%@",targets);
    
    id target = [targets.firstObject valueForKey:@"target"];
    SEL action = NSSelectorFromString(@"handleNavigationTransition:");
    //创建滑动手势
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:target action:action];
    [self.view addGestureRecognizer:panGesture];
}






//1.获得手势中所有属性名
-(void)getIvarName{
    
    //1.通过运行时，打印手势中的所有属性
    unsigned int count = 0;
    //拷贝所有关于手势的属性，包含私有属性
    Ivar *ivars = class_copyIvarList([UIGestureRecognizer class], &count);
    //遍历这个属性数组，拿到每一个属性
    NSArray *ivarList = [NSArray array];
    //初始化一个count那么长的可变数组
    NSMutableArray *mutableList = [NSMutableArray arrayWithCapacity:count];
    for (unsigned int i = 0; i < count; i++) {
        //获取成员变量名
        const char *ivarName = ivar_getName(ivars[i]);
        //获取类的成员变量的类型
        //const char *ivarType = ivar_getTypeEncoding(ivars[i]);
        [mutableList addObject:[NSString stringWithUTF8String:ivarName]];
    }
    //释放
    
    free(ivars);
    
    ivarList = [NSArray arrayWithArray:mutableList];
}


@end
