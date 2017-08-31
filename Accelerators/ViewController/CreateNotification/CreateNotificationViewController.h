//
//  CreateNotificationViewController.h
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "GlobalConstant.h"
#import "ACFloatingTextField.h"

@interface CreateNotificationViewController : RootViewController<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *notificationLbl;
@property (weak, nonatomic) IBOutlet UITextView *notificationTextView;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;

- (IBAction)backBtnAction:(id)sender;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *notificationTxtFld;

@end
