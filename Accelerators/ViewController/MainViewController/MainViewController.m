//
//  MainViewController.m
//  CoreData2
//
//  Created by Rushikesh Kulkarni on 28/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInputViews];
    
    UserDataModel *objUserDataModel = [UserDataModel getUserDataModel];
    NSLog(@"userid in main %@",objUserDataModel.userId);
    
}
- (void) loadInputViews {
    switch ((VIEWHEIGHT == 568)?1:((VIEWHEIGHT == 667)?2:3)) {
        case 1:{
            self.participantLbl.font = LFONT_13;
            self.profileNameLbl.font = LFONT_13;
            self.logOutLbl.font = LFONT_13;
            self.submitIdeasLbl.font = LFONT_13;
            self.submittedIdeasLbl.font = LFONT_13;
        }
            break;
        case 2:{
            self.participantLbl.font = LFONT_15;
            self.profileNameLbl.font = LFONT_15;
            self.logOutLbl.font = LFONT_15;
            self.submitIdeasLbl.font = LFONT_15;
            self.submittedIdeasLbl.font = LFONT_15;
        }
            break;
        default:{
            self.participantLbl.font = LFONT_17;
            self.profileNameLbl.font = LFONT_17;
            self.logOutLbl.font = LFONT_17;
            self.submitIdeasLbl.font = LFONT_17;
            self.submittedIdeasLbl.font = LFONT_17;
        }
            break;
    }
}


- (IBAction)mainBtnPressed:(UIButton *)sender {
    switch (sender.tag) {
        case 100: {
            [self fnForSubmitNewIdeasViewController];
        }
            break;
        case 101: {
            [self fnForideaReportViewController];
        }
            break;
        case 102: {
            [self fnForProfileViewController];
        }
            break;
        case 103: {
            [self fnForLogout];
        }
            break;
            
        default:
            break;
    }
}
#pragma mark - Logout
- (void) fnForLogout {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Are you sure you want to logout?" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *no = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *yes = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertController addAction:no];
    [alertController addAction:yes];
    [self presentViewController:alertController animated:YES completion:nil];
}
@end
