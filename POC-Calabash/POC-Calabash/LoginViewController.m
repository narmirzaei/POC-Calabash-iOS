//
//  LoginViewController.m
//  POC-Calabash
//
//  Created by Narbeh Mirzaei on 1/12/17.
//  Copyright © 2017 Narbeh Mirzaei. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)loginButtonDidTap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *errorMessageLabel;
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

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

#pragma mark - Actions
- (IBAction)loginButtonDidTap:(id)sender {
    NSAssert(self.usernameTextField.text.length > 0, @"Username should not be empty");
    NSAssert(self.passwordTextField.text.length > 0, @"Password should not be empty");
    
    if ([self.usernameTextField.text isEqualToString: @"user@bamilo.com"]) {
        if ([self.passwordTextField.text isEqualToString:@"123"]) {
            [self.errorMessageLabel setTextColor:[UIColor greenColor]];
            [self.errorMessageLabel setText:@"OK!"];
        } else {
            [self.errorMessageLabel setText:@"Password is incorrect."];
        }
    } else {
        [self.errorMessageLabel setText:@"Username is unknown."];
    }
}

@end
