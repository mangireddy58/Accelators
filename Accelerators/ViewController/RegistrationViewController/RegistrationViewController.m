//
//  RegistrationViewController.m
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "RegistrationViewController.h"


@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInputViews];
}
- (void) loadInputViews {
    NSMutableAttributedString *mutableString = [[NSMutableAttributedString alloc] initWithString:@"I have read and agree to the Terms and Conditions."];
    [mutableString addAttribute:NSForegroundColorAttributeName value:[UIColor lightGrayColor] range:NSMakeRange(0,29)];
    [mutableString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:66.0/255.0 green:171.0/255.0 blue:229.0/255.0 alpha:1.0]  range:NSMakeRange(29,20)];
    [self.agreeBtn setAttributedTitle:mutableString forState:UIControlStateNormal];
    //Drop down
    NSArray *userTypeArray = @[@"Admin", @"Expert", @"Participant"];
    self.picker = [[DownPicker alloc] initWithTextField:self.selectUserTypeTxtFld withData:userTypeArray];
    
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.registrationLbl.font = LFONT_13;
            self.submitBtn.titleLabel.font = BFONT_13;
            self.cancelBtn.titleLabel.font = BFONT_13;
        }
            break;
        case 2:{
            self.registrationLbl.font = LFONT_15;
            self.submitBtn.titleLabel.font = BFONT_15;
            self.cancelBtn.titleLabel.font = BFONT_15;
        }
            break;
        default:{
            self.registrationLbl.font = LFONT_17;
            self.submitBtn.titleLabel.font = BFONT_17;
            self.cancelBtn.titleLabel.font = BFONT_17;
        }
            break;
    }
    self.emailTxtFld.tag = 1;
    self.mobileNumTxtFld.tag = 2;
    self.emailTxtFld.keyboardType = UIKeyboardTypeEmailAddress;
    self.mobileNumTxtFld.keyboardType = UIKeyboardTypeNumberPad;
}

#pragma mark - Select user type
- (IBAction)selectUserTypeBtnAction:(id)sender {
    
}

#pragma mark - Agree
- (IBAction)agreeBtnAction:(id)sender {
    
}

#pragma mark - Submit
- (IBAction)submitBtnAction:(id)sender {
    if (self.firstNameTxtFld.text.length == 0) {
        [self.firstNameTxtFld becomeFirstResponder];
    }
    else if (self.lastNameTxtFld.text.length == 0) {
        [self.lastNameTxtFld becomeFirstResponder];
    }
    else if (self.emailTxtFld.text.length == 0) {
        [self.emailTxtFld becomeFirstResponder];
    }
    else if (self.selectUserTypeTxtFld.text.length == 0) {
        [self.selectUserTypeTxtFld becomeFirstResponder];
    }
    else if (self.mobileNumTxtFld.text.length == 0) {
        [self.mobileNumTxtFld becomeFirstResponder];
    }
    else if (self.passwordTxtFld.text.length == 0){
        [self.passwordTxtFld becomeFirstResponder];
    }
    else if (self.confirmTxtFld.text.length == 0) {
        [self.confirmTxtFld becomeFirstResponder];
    }
    else if (self.mobileNumTxtFld.text.length != kMobileNumberLimit){
        NSLog(@"Invalid mobile num");
    }
    else if (![self fnForValidateEmail:self.emailTxtFld.text]) {
        NSLog(@"Invalid email id ");
    }
    else if (![self.passwordTxtFld.text isEqualToString:self.confirmTxtFld.text]) {
        NSLog(@"Password mismatch");
    }
    else {
        NSLog(@"Success");
    }
//    if (self.selectUserTypeTxtFld.text.length == 0) {
//        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Please" message:@"Select user type" preferredStyle:UIAlertControllerStyleAlert];
//        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//            
//        }];
//        [alert addAction:ok];
//        [self presentViewController:alert animated:alert completion:nil];
//    }
//    else {
//        [self fnForMainViewController];
//    }
    
}

#pragma mark - Textfield delegate methods
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if(textField.tag == 2)
    {
        if([string rangeOfCharacterFromSet:ALLOWED_NUMBERS].location == NSNotFound){
            NSUInteger newLength = [textField.text length] + [string length] - range.length;
            if(newLength > kMobileNumberLimit - 1){
                if(textField.text.length != kMobileNumberLimit){
                    textField.text  = [NSString stringWithFormat:@"%@%@",textField.text,string];
                }
                [textField resignFirstResponder];
                return NO;
            }
            else{
                return YES;
            }
        }
        else{
            return NO;
        }
    }
    else if(textField.tag == 1)
    {
        if(([string rangeOfCharacterFromSet:ALLOWED_CHARACTERS].location == NSNotFound) || ([ALLOWED_SPLCHAR_EMAIL rangeOfString:string].location != NSNotFound) || ([string rangeOfCharacterFromSet:ALLOWED_NUMBERS].location == NSNotFound)){
            NSUInteger oldLength = [textField.text length];
            NSUInteger replacementLength = [string length];
            NSUInteger rangeLength = range.length;
            NSUInteger newLength = oldLength - rangeLength + replacementLength;
            BOOL returnKey = [string rangeOfString: @"\n"].location != NSNotFound;
            return newLength != -999 || returnKey;
        }
        else{
            return NO;
        }
    }
    return YES;
}
#pragma mark - cancel 
- (IBAction)cancelBtnAction:(id)sender {
    [self fnForLoginViewontroller];
}


@end
