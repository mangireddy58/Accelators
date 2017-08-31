//
//  RegistrationViewController.h
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "ACFloatingTextField.h"
#import "DownPicker.h"
#import "UIDownPicker.h"
#import "GlobalConstant.h"

@interface RegistrationViewController : RootViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *registrationLbl;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *firstNameTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *middleNameTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *lastNameTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *emailTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *selectUserTypeTxtFld;
@property (weak, nonatomic) IBOutlet UIButton *selectUserTypeBtn;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *mobileNumTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *passwordTxtFld;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *confirmTxtFld;
@property (weak, nonatomic) IBOutlet UIButton *agreeBtn;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;
@property (nonatomic) DownPicker *picker;

- (IBAction)selectUserTypeBtnAction:(id)sender;
- (IBAction)agreeBtnAction:(id)sender;
- (IBAction)submitBtnAction:(id)sender;
- (IBAction)cancelBtnAction:(id)sender;


@end
