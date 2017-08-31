//
//  ForGotPasswordViewController.m
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 29/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "ForGotPasswordViewController.h"

@interface ForGotPasswordViewController ()

@end

@implementation ForGotPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInputViews];
}
- (void) loadInputViews {
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.forGotPasswordLbl.font = LFONT_13;
            self.submitBtn.titleLabel.font = BFONT_13;
            self.cancelBtn.titleLabel.font = BFONT_13;
        }
            break;
        case 2:{
            self.forGotPasswordLbl.font = LFONT_15;
            self.submitBtn.titleLabel.font = BFONT_15;
            self.cancelBtn.titleLabel.font = BFONT_15;
        }
            break;
        default:{
            self.forGotPasswordLbl.font = LFONT_17;
            self.submitBtn.titleLabel.font = BFONT_17;
            self.cancelBtn.titleLabel.font = BFONT_17;
        }
            break;
    }
    self.emailIdTxtFld.delegate = self;
    self.emailIdTxtFld.tag = 1;
    self.emailIdTxtFld.keyboardType = UIKeyboardTypeEmailAddress;
}


#pragma mark - Submit
- (IBAction)submitAction:(id)sender {
    if (self.emailIdTxtFld.text.length == 0) {
        [self.emailIdTxtFld becomeFirstResponder];
    }
    else if (![self fnForValidateEmail:self.emailIdTxtFld.text]) {
        NSLog(@"Invalid email id");
    }
    else {
        
    }
}

#pragma mark - Textfield delegate methods
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if(textField.tag == 1){
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
#pragma mark - Cancel
- (IBAction)cancelBtnAction:(id)sender {
    [self fnForLoginViewontroller];
}
@end
