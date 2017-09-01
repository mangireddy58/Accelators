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
    self.userNameTxtFld.userInteractionEnabled = NO;
    self.mobileTxtFld.userInteractionEnabled = NO;
    self.emailTxtFld.userInteractionEnabled = NO;
    self.editBtn.tag = 1;
    UserDataModel *objUserDataModel = [UserDataModel getUserDataModel];
    NSString *lLoginParams = [NSString stringWithFormat:PROFILE_PARAMETERS,[NSString stringWithFormat:@"%@",objUserDataModel.userId]];
    ClassForServerComm *objForServerComm = [[ClassForServerComm alloc] init];
    objForServerComm.delegate = self;
    [objForServerComm sendHttpPostRequestWithParam:lLoginParams andServiceName:USER_PROFILE_URL];
}
- (void)onServiceSuccess:(NSMutableArray *)responseArray {
    NSArray *userArray =  [responseArray valueForKey:@"personalDetails"];
    NSDictionary *userDataDict = [userArray objectAtIndex:0];
    if((NSNull *) [userDataDict objectForKey:@"user_email"] != [NSNull null]) {
        if([[userDataDict objectForKey:@"user_email"] length] > 0){
            self.emailTxtFld.text = [userDataDict objectForKey:@"user_email"];
            self.emailLbl.text = [userDataDict objectForKey:@"user_email"];
        }
    }
    self.mobileTxtFld.text = [NSString stringWithFormat:@"%@",[userDataDict objectForKey:@"user_contact"]];
    if((NSNull *) [NSString stringWithFormat:@"%@",[userDataDict objectForKey:@"user_contact"]] != [NSNull null]) {
        if([[NSString stringWithFormat:@"%@",[userDataDict objectForKey:@"user_contact"]] length] > 0){
            self.mobileTxtFld.text = [[NSString stringWithFormat:@"%@",[userDataDict objectForKey:@"user_contact"]]stringByReplacingOccurrencesOfString:@"" withString:@""];
        }
    }
    if((NSNull *) [userDataDict objectForKey:@"user_name"] != [NSNull null]) {
        if([[userDataDict objectForKey:@"user_name"] length] > 0){
            self.userNameTxtFld.text = [userDataDict objectForKey:@"user_name"];
        }
    }
    
//        self.personalDataDict = [responseArray valueForKey:@"personalDetails"];
//        NSLog(@"%@",[self.personalDataDict valueForKey:@"user_email"]);
//        self.emailLbl.text = [self.personalDataDict valueForKey:@"user_email"];
//        self.emailTxtFld.text = [self.personalDataDict valueForKey:@"user_email"];
//        self.mobileTxtFld.text = [self.personalDataDict valueForKey:@"user_contact"];
//        self.userNameTxtFld.text = [self.personalDataDict valueForKey:@"user_name"];

}
- (void)onServiceFailed {
    NSLog(@"Service failed");
}
#pragma mark - back
- (IBAction)backAction:(id)sender {
    [self fnForMainViewController];
}
#pragma mark - Edit
- (IBAction)editBtnAction:(id)sender {
    if (self.editBtn.tag == 0) {
        self.userNameTxtFld.userInteractionEnabled = NO;
        self.mobileTxtFld.userInteractionEnabled = NO;
        self.emailTxtFld.userInteractionEnabled = NO;
        self.editBtn.tag = 1;
    }
    else {
        self.userNameTxtFld.userInteractionEnabled = YES;
        self.mobileTxtFld.userInteractionEnabled = YES;
        self.emailTxtFld.userInteractionEnabled = YES;
        self.editBtn.tag = 0;
    }
    
}
#pragma mark - ChangePassword
- (IBAction)changePswdBtnAction:(id)sender {
    [self fnForChnagePasswordViewController];
}
@end
