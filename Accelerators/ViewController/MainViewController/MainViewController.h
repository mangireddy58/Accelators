//
//  MainViewController.h
//  CoreData2
//
//  Created by Rushikesh Kulkarni on 28/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "GlobalConstant.h"
#import "UserDataModel.h"
#import "UniversalDataModel.h"

@interface MainViewController : RootViewController

@property (weak, nonatomic) IBOutlet UILabel *participantLbl;
@property (weak, nonatomic) IBOutlet UILabel *submitIdeasLbl;
@property (weak, nonatomic) IBOutlet UILabel *submittedIdeasLbl;
@property (weak, nonatomic) IBOutlet UILabel *profileNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *logOutLbl;

@property (weak, nonatomic) IBOutlet UIButton *submitNewIdeasBtn;
@property (weak, nonatomic) IBOutlet UIButton *submittedIdeasBtn;
@property (weak, nonatomic) IBOutlet UIButton *profileBtn;
@property (weak, nonatomic) IBOutlet UIButton *logoutBtn;

- (IBAction)mainBtnPressed:(UIButton *)sender;


@end
