//
//  ForgotNextViewController.m
//  HeartCool
//
//  Created by Windom on 2017/3/11.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "ForgotNextViewController.h"

@interface ForgotNextViewController ()

@end

@implementation ForgotNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)onClickNext:(id)sender {
    [[self navigationController] popToRootViewControllerAnimated:YES];
}

@end
