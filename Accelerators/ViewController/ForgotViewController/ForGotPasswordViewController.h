//
//  ForGotPasswordViewController.h
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 29/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "ACFloatingTextField.h"
#import "GlobalConstant.h"

@interface ForGotPasswordViewController : RootViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *forGotPasswordLbl;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *emailIdTxtFld;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;

- (IBAction)cancelBtnAction:(id)sender;
- (IBAction)submitAction:(id)sender;


@end
