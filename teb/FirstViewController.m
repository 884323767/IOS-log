//
//  FirstViewController.m
//  teb
//
//  Created by lewei li on 12/04/2018.
//  Copyright © 2018 lewei li. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 　在视图控制器已被实例化，视图被加载到内存中时，会调用viewDidLoad方法，这时视图并未出现。通常会对所控制的视图进行初始化处理。
    NSLog(@"%s", "FirstView 视图创建 ：viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"%s", "FirstView 视图可见 ：viewWillAppear");
    
}
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"%s", "FirstView 视图可见 ：viewDidAppear");
    
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"%s", "FirstView 视图不可见 ：viewDidDisappear");
}
-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"%s", "FirstView 视图不可见 ：viewWillDisappear");
    
}
- (void)didReceiveMemoryWarning {
    // 释放内存，包括视图控制器中的一些成员变量和视图的释放。
    NSLog(@"%s", "FirstView 系统低内存 ：didReceiveMemoryWarning");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidUnload{
    NSLog(@"%s", "FirstView 系统低内存 ：viewDidUnload");
    [super viewDidUnload];
    
}

@end
