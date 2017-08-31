//
//  RootViewController.m
//  Accelerators
//
//  Created by Sai on 26/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#import "RootViewController.h"
#import "LoginViewController.h"
#import "RegistrationViewController.h"
#import "ForGotPasswordViewController.h"
#import "ChangePasswordViewController.h"
#import "MainViewController.h"
#import "CreateMessageViewController.h"
#import "SubmitNewIdeasViewController.h"
#import "SubmittedIdeasViewController.h"
#import "ProfileViewController.h"
#import "IdeaReportViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(!self.objUniversalDataModel)
        self.objUniversalDataModel = [UniversalDataModel getUniversalDataModel];
}
#pragma mark - LoginViewController
- (void) fnForLoginViewontroller {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    LoginViewController *loginVC = [storyBoard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    CATransition *transition = [CATransition animation];
    transition.duration = 0.45;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    transition.delegate = self;
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    [self.navigationController pushViewController:loginVC animated:NO];
//    [self.navigationController pushViewController:loginVC animated:YES];
}
#pragma mark - RegistrationViewController
- (void) fnForRegistrationViewontroller {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    RegistrationViewController *regiVC = [storyBoard instantiateViewControllerWithIdentifier:@"RegistrationViewController"];
    [self.navigationController pushViewController:regiVC animated:YES];
}
#pragma mark - ForgotViewController
- (void) fnForForgotViewontroller {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    ForGotPasswordViewController *forgotVC = [storyBoard instantiateViewControllerWithIdentifier:@"ForGotPasswordViewController"];
    [self.navigationController pushViewController:forgotVC animated:YES];
}
#pragma mark - ChnageViewController
- (void) fnForChnagePasswordViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    ChangePasswordViewController *changePassVC = [storyBoard instantiateViewControllerWithIdentifier:@"ChangePasswordViewController"];
    [self.navigationController pushViewController:changePassVC animated:YES];
}
#pragma mark - Menu
- (void) fnForMainViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    MainViewController *mainVC = [storyBoard instantiateViewControllerWithIdentifier:@"MainViewController"];
    [self.navigationController pushViewController:mainVC animated:YES];
}
#pragma mark -Profile
- (void) fnForProfileViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    ProfileViewController *profileVC = [storyBoard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
    [self.navigationController pushViewController:profileVC animated:YES];
}
#pragma mark - SubmittedIdeas
- (void) fnForSubmittedIdeasViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    SubmittedIdeasViewController *submittedIdeasVC = [storyBoard instantiateViewControllerWithIdentifier:@"SubmittedIdeasViewController"];
    [self.navigationController pushViewController:submittedIdeasVC animated:YES];
}
#pragma mark- CreateMessage
- (void) fnForCreateMessageViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    CreateMessageViewController *profileVC = [storyBoard instantiateViewControllerWithIdentifier:@"CreateMessageViewController"];
    [self.navigationController pushViewController:profileVC animated:YES];
}
#pragma mark - SubmittedNewIdeas
- (void) fnForSubmitNewIdeasViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    SubmitNewIdeasViewController *profileVC = [storyBoard instantiateViewControllerWithIdentifier:@"SubmitNewIdeasViewController"];
    [self.navigationController pushViewController:profileVC animated:YES];
}
#pragma mark - Ideareport
- (void) fnForideaReportViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    IdeaReportViewController *ideaReportVC = [storyBoard instantiateViewControllerWithIdentifier:@"IdeaReportViewController"];
    [self.navigationController pushViewController:ideaReportVC animated:YES];
}
- (NSString *) fnForGettingCurrentDate {
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
    NSString *currentDateTIme = [NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:[NSDate date]]];
    return currentDateTIme;
}
#pragma mark - Email validation
- (BOOL)fnForValidateEmail:(NSString *)inputText {
    NSString *emailRegex = @"[A-Z0-9a-z][A-Z0-9a-z._%+-]*@[A-Za-z0-9][A-Za-z0-9.-]*\\.[A-Za-z]{2,6}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    NSRange aRange;
    if([emailTest evaluateWithObject:inputText]) {
        aRange = [inputText rangeOfString:@"." options:NSBackwardsSearch range:NSMakeRange(0, [inputText length])];
        int indexOfDot = (int)aRange.location;
        if(aRange.location != NSNotFound) {
            NSString *topLevelDomain = [inputText substringFromIndex:indexOfDot];
            topLevelDomain = [topLevelDomain lowercaseString];
            NSSet *TLD;
            TLD = [NSSet setWithObjects:@".aero", @".asia", @".biz", @".cat", @".com", @".coop", @".edu", @".gov", @".info", @".int", @".jobs", @".mil", @".mobi", @".museum", @".name", @".net", @".org", @".pro", @".tel", @".travel", @".ac", @".ad", @".ae", @".af", @".ag", @".ai", @".al", @".am", @".an", @".ao", @".aq", @".ar", @".as", @".at", @".au", @".aw", @".ax", @".az", @".ba", @".bb", @".bd", @".be", @".bf", @".bg", @".bh", @".bi", @".bj", @".bm", @".bn", @".bo", @".br", @".bs", @".bt", @".bv", @".bw", @".by", @".bz", @".ca", @".cc", @".cd", @".cf", @".cg", @".ch", @".ci", @".ck", @".cl", @".cm", @".cn", @".co", @".cr", @".cu", @".cv", @".cx", @".cy", @".cz", @".de", @".dj", @".dk", @".dm", @".do", @".dz", @".ec", @".ee", @".eg", @".er", @".es", @".et", @".eu", @".fi", @".fj", @".fk", @".fm", @".fo", @".fr", @".ga", @".gb", @".gd", @".ge", @".gf", @".gg", @".gh", @".gi", @".gl", @".gm", @".gn", @".gp", @".gq", @".gr", @".gs", @".gt", @".gu", @".gw", @".gy", @".hk", @".hm", @".hn", @".hr", @".ht", @".hu", @".id", @".ie", @" No", @".il", @".im", @".in", @".io", @".iq", @".ir", @".is", @".it", @".je", @".jm", @".jo", @".jp", @".ke", @".kg", @".kh", @".ki", @".km", @".kn", @".kp", @".kr", @".kw", @".ky", @".kz", @".la", @".lb", @".lc", @".li", @".lk", @".lr", @".ls", @".lt", @".lu", @".lv", @".ly", @".ma", @".mc", @".md", @".me", @".mg", @".mh", @".mk", @".ml", @".mm", @".mn", @".mo", @".mp", @".mq", @".mr", @".ms", @".mt", @".mu", @".mv", @".mw", @".mx", @".my", @".mz", @".na", @".nc", @".ne", @".nf", @".ng", @".ni", @".nl", @".no", @".np", @".nr", @".nu", @".nz", @".om", @".pa", @".pe", @".pf", @".pg", @".ph", @".pk", @".pl", @".pm", @".pn", @".pr", @".ps", @".pt", @".pw", @".py", @".qa", @".re", @".ro", @".rs", @".ru", @".rw", @".sa", @".sb", @".sc", @".sd", @".se", @".sg", @".sh", @".si", @".sj", @".sk", @".sl", @".sm", @".sn", @".so", @".sr", @".st", @".su", @".sv", @".sy", @".sz", @".tc", @".td", @".tf", @".tg", @".th", @".tj", @".tk", @".tl", @".tm", @".tn", @".to", @".tp", @".tr", @".tt", @".tv", @".tw", @".tz", @".ua", @".ug", @".uk", @".us", @".uy", @".uz", @".va", @".vc", @".ve", @".vg", @".vi", @".vn", @".vu", @".wf", @".ws", @".ye", @".yt", @".za", @".zm", @".zw", nil];
            if(topLevelDomain != nil && ([TLD containsObject:topLevelDomain])) {
                return TRUE;
            }
        }
    }
    return FALSE;
}


@end
