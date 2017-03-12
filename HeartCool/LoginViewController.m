//
//  LoginViewController.m
//  HeartCool
//
//  Created by Windom on 2017/3/2.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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

- (IBAction)onClickAbout:(id)sender {
}

- (IBAction)onClickLogin:(id)sender {
    [self performSegueWithIdentifier:@"push_devices" sender:self];
}

- (IBAction)onClickRegister:(id)sender {
    [self performSegueWithIdentifier:@"push_register" sender:self];
}

- (IBAction)onClickForgot:(id)sender {
    [self performSegueWithIdentifier:@"push_forgot" sender:self];
}

@end
