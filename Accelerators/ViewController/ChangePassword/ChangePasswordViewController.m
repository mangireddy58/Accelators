//
//  ChangePasswordViewController.m
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 29/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "ChangePasswordViewController.h"

@interface ChangePasswordViewController ()

@end

@implementation ChangePasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInputViews];
}

- (void) loadInputViews {
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.changePaswdLbl.font = BFONT_13;
            self.submitBtn.titleLabel.font = BFONT_13;
            self.cancelBtn.titleLabel.font = BFONT_13;
        }
            break;
        case 2:{
            self.changePaswdLbl.font = BFONT_15;
            self.submitBtn.titleLabel.font = BFONT_15;
            self.cancelBtn.titleLabel.font = BFONT_15;
        }
            break;
        default:{
            self.changePaswdLbl.font = BFONT_17;
            self.submitBtn.titleLabel.font = BFONT_17;
            self.cancelBtn.titleLabel.font = BFONT_17;
        }
            break;
    }
}
#pragma mark - Submit
- (IBAction)submitBtnAction:(id)sender {
    if (self.oldPasswordTxtFld.text.length == 0) {
        [self.oldPasswordTxtFld becomeFirstResponder];
    }
    else if (self.nePasswordTxtFld.text.length == 0) {
        
    }
    else if (self.reEnterPasswordTxtFld.text.pathExtension.length == 0) {
        
    }
    else if(![self.nePasswordTxtFld.text isEqualToString:self.reEnterPasswordTxtFld.text]) {
        
    }
}
#pragma mark - Cancel
- (IBAction)cancelAction:(id)sender {
    [self fnForProfileViewController];
}
@end
