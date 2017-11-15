//
//  ViewController.m
//  MJTable
//
//  Created by Mac on 2017/11/15.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "MJTable.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MJTable* table = [[MJTable alloc]initWithFrame:CGRectMake(0, 0,kMainScreen_Width, kMainScreen_Height)];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
