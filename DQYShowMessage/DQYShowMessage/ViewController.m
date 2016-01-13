//
//  ViewController.m
//  DQYShowMessage
//
//  Created by mac on 16/1/13.
//  Copyright © 2016年 dqy. All rights reserved.
//

#import "ViewController.h"
#import "DQYShowMessage.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark-------------------
- (void)btnAction:(UIButton *)sender {
    
  
    DQYShowMessage * message = [DQYShowMessage new];
    [message showMessageInWindow:@"这个按钮是假的!"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
