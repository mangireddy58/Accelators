//
//  ProfileViewController.h
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalConstant.h"
#import "RootViewController.h"
#include "ACFloatingTextField.h"

@interface ProfileViewController : RootViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *profileLbl;
@property (weak, nonatomic) IBOutlet UILabel *emailLbl;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *userNameTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *mobileTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *emailTxtFld;
@property (weak, nonatomic) IBOutlet UIButton *changePswdBtn;


- (IBAction)backAction:(id)sender;
- (IBAction)editBtnAction:(id)sender;
- (IBAction)changePswdBtnAction:(id)sender;

@end
