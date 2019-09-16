//
//  ViewController.m
//  button
//
//  Created by WeiChaoW on 16/9/19.
//  Copyright © 2016年 WeiChaoW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"按钮";
    
    //1.创建按钮,有多种方法来创建,经常使用的方法是buttonWithType
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    //也可以用对象的初始化方法来创建
    //    UIButton *button = [[UIButton alloc]init];
    //系统样式的按钮          UIButtonTypeSystem
    //自定义的按钮              UIButtonTypeCustom
    //详情按钮         UIButtonTypeDetailDisclosure,
    //灰色按钮         UIButtonTypeInfoLight,
    //白色信息按钮      UIButtonTypeInfoDark,
    //加号按钮         UIButtonTypeContactAdd,
    //圆角按钮         UIButtonTypeRoundedRect
    //ios6: 默认就是圆角矩形按钮
    //ios7: 所有按钮没有边框了(扁平化)
    
    //2.设置按钮的尺寸
    button.frame= CGRectMake(100, 100, 100, 30);
    
    //3.按钮的背景色
    button.backgroundColor = [UIColor blueColor];
    
    
    //4.设置按钮上图片和文字的状态
    //正常状态UIControlStateNormal
    [button setTitle:@"正常" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"ad1"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"ad1"] forState:UIControlStateNormal];
    //选中状态UIControlStateSelected
    [button setTitle:@"选中" forState:UIControlStateSelected];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [button setImage:[UIImage imageNamed:@"ad1"] forState:UIControlStateSelected];
    [button setBackgroundImage:[UIImage imageNamed:@"ad1"] forState:UIControlStateSelected];
    //高亮状态
    [button setTitle:@"高亮" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button setImage:[UIImage imageNamed:@"ad1"] forState:UIControlStateHighlighted];
    [button setBackgroundImage:[UIImage imageNamed:@"ad1"] forState:UIControlStateHighlighted];
    
    //5.设置圆角矩形
    //角度位5
    button.layer.cornerRadius=5;
    //按钮的边框厚度
    button.layer.borderWidth = 1;
    //按钮的边框的颜色
    button.layer.borderColor = [UIColor redColor].CGColor;
    //允许剪切
    button.clipsToBounds=YES;
    
    
    //6.设置按钮上文本字体
    button.titleLabel.font=[UIFont systemFontOfSize:17];
    
    //7.按钮的交互状态
    
    //不允许交互
    button.enabled = NO;
    //允许交互
    button.enabled = YES;
    
    //8.点击时效果
    //点击时高亮
    button.showsTouchWhenHighlighted=YES;
    //禁用状态下按钮是否变暗
    button.adjustsImageWhenDisabled = YES;
    //高亮状态下按钮是否变暗
    button.adjustsImageWhenHighlighted = YES;
    
    //9.按钮的tag值
    button.tag = 1;
    
    
    //10.按钮的点击事件
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
}

//按钮的点击事件
- (void)btnClick:(UIButton *)button{
    
    button.selected = !button.selected;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
