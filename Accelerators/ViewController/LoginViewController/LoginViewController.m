//
//  LoginViewController.m
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInputViews];
}
#pragma mark - Load inputviews
- (void) loadInputViews {
    self.passwordTxtFld.secureTextEntry = YES;
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.loginBtn.titleLabel.font = BFONT_13;
            self.forgotPasswordBtn.titleLabel.font = LFONT_13;
            self.registerBtn.titleLabel.font = LFONT_13;
        }
            break;
        case 2:{
            self.loginBtn.titleLabel.font = BFONT_15;
            self.forgotPasswordBtn.titleLabel.font = LFONT_15;
            self.registerBtn.titleLabel.font = LFONT_15;
        }
            break;
        default:{
            self.loginBtn.titleLabel.font = BFONT_17;
            self.forgotPasswordBtn.titleLabel.font = LFONT_17;
            self.registerBtn.titleLabel.font = LFONT_17;
        }
            break;
    }
    self.userNameTxtFld.text = @"test123@gestell.in";
    self.passwordTxtFld.text = @"Daimler@123";
}

#pragma mark - Login method.
- (IBAction)loginBtnAction:(id)sender {
    if (self.userNameTxtFld.text.length == 0){
        [self.userNameTxtFld becomeFirstResponder];
    }
    else if (self.passwordTxtFld.text.length == 0){
        [self.passwordTxtFld becomeFirstResponder];
    }
    else if(![self fnForValidateEmail:self.userNameTxtFld.text]){
        NSLog(@"Invalid email id");
    }
    else {
        NSString *deviceUUID = [[[UIDevice currentDevice] identifierForVendor]UUIDString];
        NSString *lLoginParams = [NSString stringWithFormat:LOGIN_PARAMETERS, deviceUUID,self.userNameTxtFld.text, self.passwordTxtFld.text,[self fnForGettingCurrentDate]];
        ClassForServerComm *objForServerComm = [[ClassForServerComm alloc] init];
        objForServerComm.delegate = self;
        [objForServerComm sendHttpPostRequestWithParam:lLoginParams andServiceName:LOGIN_URL];
        
    }
}
#pragma mark - Forgot password method.
- (IBAction)forgotPasswordBtnAction:(id)sender {
    [self fnForForgotViewontroller];
}

#pragma mark- Register method.
- (IBAction)registerBtnAction:(id)sender {
    [self fnForRegistrationViewontroller];
}
#pragma mark - Server delegate
-(void)onServiceSuccess:(NSMutableArray *)responseArray{
    NSLog(@"status %@",[responseArray objectAtIndex:0]);
    NSLog(@"user role %@", [responseArray objectAtIndex:1]);
    NSLog(@"userid %@", [responseArray objectAtIndex:2]);
    UserDataModel *objUserDataModelObj = [UserDataModel getUserDataModel];
    [objUserDataModelObj saveUserID:[NSString stringWithFormat:@"%@",[responseArray objectAtIndex:2]]];
    [self fnForMainViewController];
}

- (void)onServiceFailed {
    NSLog(@"Failed");
}


@end
