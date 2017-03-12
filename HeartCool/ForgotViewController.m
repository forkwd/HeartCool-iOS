//
//  ForgotViewController.m
//  HeartCool
//
//  Created by Windom on 2017/3/11.
//  Copyright © 2017年 uteamtec. All rights reserved.
//

#import "ForgotViewController.h"

@interface ForgotViewController ()

@end

@implementation ForgotViewController

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

- (IBAction)onClickAuthCode:(id)sender {
}

- (IBAction)onClickNext:(id)sender {
    [self performSegueWithIdentifier:@"push_forgot_next" sender:self];
}

@end
