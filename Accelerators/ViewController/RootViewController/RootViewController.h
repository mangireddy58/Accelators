//
//  RootViewController.h
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UniversalDataModel.h"
#import "UserDataModel.h"

@interface RootViewController : UIViewController<CAAnimationDelegate>

//@property (strong, nonatomic) UIStoryboard *storyBoard;
@property (strong, nonatomic) UniversalDataModel *objUniversalDataModel;
@property (strong, nonatomic) UserDataModel *objUserDataModel;

- (void) fnForLoginViewontroller;
- (void) fnForRegistrationViewontroller;
- (void) fnForForgotViewontroller;
- (void) fnForChnagePasswordViewController;
- (void) fnForMainViewController;
- (void) fnForProfileViewController;
- (void) fnForSubmittedIdeasViewController;
- (void) fnForCreateMessageViewController;
- (void) fnForSubmitNewIdeasViewController;
- (void) fnForideaReportViewController;

- (BOOL)fnForValidateEmail:(NSString *)inputText;
- (NSString *) fnForGettingCurrentDate;
@end
