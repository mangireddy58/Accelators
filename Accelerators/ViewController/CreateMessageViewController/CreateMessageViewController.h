//
//  CreateMessageViewController.h
//  CoreData2
//
//  Created by Rushikesh Kulkarni on 28/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACFloatingTextField.h"
#import "GlobalConstant.h"
#import "RootViewController.h"
#import "DownPicker.h"
#import "UIDownPicker.h"

@interface CreateMessageViewController : RootViewController<UITextFieldDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *createMsgLbl;
@property (weak, nonatomic) IBOutlet UILabel *expertListLbl;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *expertTypeTxtFld;
@property (weak, nonatomic) IBOutlet UITextView *messageTxtView;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;
@property (nonatomic) DownPicker *picker;

- (IBAction)submitBtnAction:(id)sender;
- (IBAction)cancelBtnAction:(id)sender;


@end
