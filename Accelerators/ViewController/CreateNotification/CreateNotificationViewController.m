//
//  CreateNotificationViewController.m
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 30/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "CreateNotificationViewController.h"

@interface CreateNotificationViewController ()

@end

@implementation CreateNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInputViews];
}

- (void) loadInputViews {
//    self.notificationTxtFld.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    self.notificationTextView.text = @"";
    [self.notificationTextView setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    self.notificationTextView.text = @"Notification*";
    self.notificationTextView.textColor = [UIColor lightGrayColor];
    self.notificationTextView.delegate = self;
    [self.notificationTextView.layer setBackgroundColor: [[UIColor whiteColor] CGColor]];
    [self.notificationTextView.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.notificationTextView.layer setBorderWidth: 1.0];
    [self.notificationTextView.layer setCornerRadius: 4.0f];
    [self.notificationTextView.layer setMasksToBounds:YES];
    
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.notificationLbl.font = LFONT_13;
            self.submitBtn.titleLabel.font = BFONT_13;
            self.cancelBtn.titleLabel.font = BFONT_13;
        }
            break;
        case 2:{
            self.notificationLbl.font = LFONT_15;
            self.submitBtn.titleLabel.font = BFONT_15;
            self.cancelBtn.titleLabel.font = BFONT_15;
        }
            break;
        default:{
            self.notificationLbl.font = LFONT_17;
            self.submitBtn.titleLabel.font = BFONT_17;
            self.cancelBtn.titleLabel.font = BFONT_17;
        }
            break;
    }
}
#pragma mark - TextView Delegate Methods.
-(void)textViewDidBeginEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:@"Notification*"]) {
        textView.text = @"";
        textView.textColor = [UIColor lightGrayColor];
    }
    [textView becomeFirstResponder];
}
-(void)textViewDidEndEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"Notification*";
        textView.textColor = [UIColor lightGrayColor];
    }
    [textView resignFirstResponder];
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
#pragma mark - Back
- (IBAction)backBtnAction:(id)sender {
    
}
@end
