//
//  ChangePasswordViewController.h
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 29/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "GlobalConstant.h"
#import "ACFloatingTextField.h"

@interface ChangePasswordViewController : RootViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *changePaswdLbl;

@property (weak, nonatomic) IBOutlet ACFloatingTextField *oldPasswordTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *nePasswordTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *reEnterPasswordTxtFld;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;
- (IBAction)submitBtnAction:(id)sender;
- (IBAction)cancelAction:(id)sender;

@end
