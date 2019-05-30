//
//  RootViewController.m
//  NavigationControllerBase
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //创建导航栏的标题文字
    self.title = @"根视图";
    //设置导航元素项目的标题
    //self.title和self.navigationItem.title二选一，谁后显示谁
    self.navigationItem.title = @"title";
    
    //创建一个导航栏左侧的按钮
    //根据title文字来创建按钮
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"左侧" style:UIBarButtonItemStyleDone
                                                               target:self action:@selector(pressLeft)];
    //将导航元素项的左侧按钮赋值
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    //创建一个导航栏右侧按钮
    //根据系统风格来创建按钮
    //只需要指定风格样式，系统风格的按钮内容或标题文字不能改变
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                              target:self action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 40)];
    label.text = @"test";
    label.textAlignment = NSTextAlignmentCenter;
    //将任何类型的控件添加到导航按钮的方法
    UIBarButtonItem *test = [[UIBarButtonItem alloc] initWithCustomView:label];
    //创建按钮数组
    NSArray *arrBtn = [NSArray arrayWithObjects:rightBtn,test,nil];
    
    self.navigationItem.rightBarButtonItems = arrBtn;
}

- (void)pressLeft{
    NSLog(@"左侧按钮被按下");
}

- (void)pressRight{
    NSLog(@"右侧按钮被按下");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
