//
//  LoginViewController.h
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACFloatingTextField.h"
#import "RootViewController.h"
#import "GlobalConstant.h"
#import "ClassForServerComm.h"
#import "UserDataModel.h"
#import "UniversalDataModel.h"

@interface LoginViewController : RootViewController<UITextFieldDelegate, ClassForServerCommDelegate>

@property (weak, nonatomic) IBOutlet ACFloatingTextField *userNameTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *passwordTxtFld;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;
@property (weak, nonatomic) IBOutlet UIButton *forgotPasswordBtn;

- (IBAction)loginBtnAction:(id)sender;
- (IBAction)forgotPasswordBtnAction:(id)sender;
- (IBAction)registerBtnAction:(id)sender;

@end
