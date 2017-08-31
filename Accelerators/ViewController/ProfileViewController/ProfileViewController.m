//
//  ProfileViewController.m
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadINputViews];
}

- (void) loadINputViews {
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.profileLbl.font = LFONT_13;
            self.emailLbl.font = LFONT_13;
            self.changePswdBtn.titleLabel.font = BFONT_13;
        }
            break;
        case 2:{
            self.profileLbl.font = LFONT_15;
            self.emailLbl.font = LFONT_15;
            self.changePswdBtn.titleLabel.font = BFONT_15;
        }
            break;
        default:{
            self.profileLbl.font = LFONT_17;
            self.emailLbl.font = LFONT_17;
            self.changePswdBtn.titleLabel.font = BFONT_17;
        }
            break;
    }
}
#pragma mark - back
- (IBAction)backAction:(id)sender {
    [self fnForMainViewController];
}
#pragma mark - Edit
- (IBAction)editBtnAction:(id)sender {
    
}
#pragma mark - ChangePassword
- (IBAction)changePswdBtnAction:(id)sender {
    [self fnForChnagePasswordViewController];
}
@end
