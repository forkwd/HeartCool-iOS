//
//  LoginViewController.m
//  HeartCool
//
//  Created by Windom on 2017/3/2.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "LoginViewController.h"

#import "AppNetTcpUser.h"
#import "SVProgressHUD.h"
#import "KeychainStore.h"

@interface LoginViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textUsername;
@property (strong, nonatomic) IBOutlet UITextField *textPassword;

@property (strong, nonatomic) IBOutlet UISwitch *switchRemeber;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *account = [KeychainStore account];
    if ([account length] >= 11) {
        [self.textUsername setText:account];
        [self.textPassword setText:[KeychainStore password:account]];
    } else {
        [self.switchRemeber setOn:YES];
    }
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

- (IBAction)onClickLogin:(id)sender {
    [self performSegueWithIdentifier:@"push_devices" sender:self];
    if (true) {
        return;// TODO: test
    }
    [AppNetTcpUser validate:[self.textUsername text] password:[self.textPassword text] block:^(bool sucess, NSString *message, NSError *error) {
        if (sucess) {
            NSLog(@"success!");
            [SVProgressHUD showSuccessWithStatus:@"登录成功"];
            [KeychainStore saveAccount:[self.textUsername text] passsword:[self.switchRemeber isOn]?[self.textPassword text]:@""];
            [self performSegueWithIdentifier:@"push_devices" sender:self];
        }
        if (error) {
            NSLog(@"error: %@", error);
        } else {
            NSLog(@"message: %@", message);
        }
    }];
}

- (IBAction)onClickRegister:(id)sender {
    [self performSegueWithIdentifier:@"push_register" sender:self];
}

- (IBAction)onClickForgot:(id)sender {
    [self performSegueWithIdentifier:@"push_forgot" sender:self];
}

@end
