//
//  GlobalConstant.h
//  Accelerators
//
//  Created by Rushikesh Kulkarni on 29/08/17.
//  Copyright © 2017 organisation. All rights reserved.
//

#ifndef GlobalConstant_h
#define GlobalConstant_h

#define IS_IPHONE  [UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone
#define IS_IPAD    [UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad

#define VIEWHEIGHT       ([[UIScreen mainScreen] bounds].size.height)
#define VIEWWIDTH        ([[UIScreen mainScreen] bounds].size.width)

#pragma mark - Service timeout interval
#define SERVICE_TIMEOUT 60.0

#define kMobileNumberLimit 10
#define ALLOWED_SPLCHAR_EMAIL @"@_-."
#define ALLOWED_SPLCHAR_NAME @"._ "
#define ALLOWED_SPLCHAR_DESCRIPTION @"._-, "
#define ALLOWED_CHARACTERS [[NSCharacterSet letterCharacterSet] invertedSet]
#define ALLOWED_NUMBERS [[NSCharacterSet decimalDigitCharacterSet] invertedSet]

#pragma mark - Base URL's
//Development
#define BASE_URL @"http://test.mb-accelerators.com/index.php/android/"

#pragma mark - DB Name
#define ENTITY_NAME @"AcceleratorsUserData"

#define LOGIN_URL @"validate_user"
#define REGISTER_URL @"insertExpertDetails"
#define VALIDATE_EMAIL_URL @"chkmail"

#define LOGIN_PARAMETERS @"{\"mobile_deviceId\":\"%@\",\"uname\":\"%@\",\"pass\":\"%@\",\"sync_date\":\"%@\"}"

#define REGISTER_PARAMETERS @"{\"firstname\":\"%@\",\"middlename\":\"%@\",\"lastname\":\"%@\",\"email\":\"%@\",\"contact\":\"%@\",\"password\":\"%@\",\"userId\":\"%@\"}"

#define CHECK_EMAIL_PARAMETERS @"{\"email\":\"%@\"}"







#pragma mark - Service Names and its Tags
typedef NS_ENUM(NSInteger, serviceURLTags) {
    login_url_tag = 501,
    registaration_url_tag,
    profile_url_tag,
    forgot_password_url_tag,
    change_password_url_tag,
    submitted_ideas_url_tag,
    submit_new_ideas_url_tag,
    create_message_url_tag
};

#pragma mark - Font

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define FONTNAME_LIGHT @"Arial Hebrew-Regular"
#define FONTNAME_BOLD @"Arial Hebrew-Bold"


#define LFONT_40     [UIFont fontWithName:FONTNAME_LIGHT size:40]
#define LFONT_39     [UIFont fontWithName:FONTNAME_LIGHT size:39]
#define LFONT_38     [UIFont fontWithName:FONTNAME_LIGHT size:38]
#define LFONT_37     [UIFont fontWithName:FONTNAME_LIGHT size:37]
#define LFONT_36     [UIFont fontWithName:FONTNAME_LIGHT size:36]
#define LFONT_35     [UIFont fontWithName:FONTNAME_LIGHT size:35]
#define LFONT_34     [UIFont fontWithName:FONTNAME_LIGHT size:34]
#define LFONT_33     [UIFont fontWithName:FONTNAME_LIGHT size:33]
#define LFONT_32     [UIFont fontWithName:FONTNAME_LIGHT size:32]
#define LFONT_31     [UIFont fontWithName:FONTNAME_LIGHT size:31]
#define LFONT_30     [UIFont fontWithName:FONTNAME_LIGHT size:30]
#define LFONT_29     [UIFont fontWithName:FONTNAME_LIGHT size:29]
#define LFONT_28     [UIFont fontWithName:FONTNAME_LIGHT size:28]
#define LFONT_27     [UIFont fontWithName:FONTNAME_LIGHT size:27]
#define LFONT_26     [UIFont fontWithName:FONTNAME_LIGHT size:26]
#define LFONT_25     [UIFont fontWithName:FONTNAME_LIGHT size:25]
#define LFONT_24     [UIFont fontWithName:FONTNAME_LIGHT size:24]
#define LFONT_23     [UIFont fontWithName:FONTNAME_LIGHT size:23]
#define LFONT_22     [UIFont fontWithName:FONTNAME_LIGHT size:22]
#define LFONT_21     [UIFont fontWithName:FONTNAME_LIGHT size:21]
#define LFONT_20     [UIFont fontWithName:FONTNAME_LIGHT size:20]
#define LFONT_19     [UIFont fontWithName:FONTNAME_LIGHT size:19]
#define LFONT_18     [UIFont fontWithName:FONTNAME_LIGHT size:18]
#define LFONT_17     [UIFont fontWithName:FONTNAME_LIGHT size:17]
#define LFONT_16     [UIFont fontWithName:FONTNAME_LIGHT size:16]
#define LFONT_15     [UIFont fontWithName:FONTNAME_LIGHT size:15]
#define LFONT_14     [UIFont fontWithName:FONTNAME_LIGHT size:14]
#define LFONT_13     [UIFont fontWithName:FONTNAME_LIGHT size:13]
#define LFONT_12     [UIFont fontWithName:FONTNAME_LIGHT size:12]
#define LFONT_11     [UIFont fontWithName:FONTNAME_LIGHT size:11]
#define LFONT_10     [UIFont fontWithName:FONTNAME_LIGHT size:10]
#define LFONT_9     [UIFont fontWithName:FONTNAME_LIGHT size:9]
#define LFONT_8     [UIFont fontWithName:FONTNAME_LIGHT size:8]

#define BFONT_40     [UIFont fontWithName:FONTNAME_BOLD size:40]
#define BFONT_39     [UIFont fontWithName:FONTNAME_BOLD size:39]
#define BFONT_38     [UIFont fontWithName:FONTNAME_BOLD size:38]
#define BFONT_37     [UIFont fontWithName:FONTNAME_BOLD size:37]
#define BFONT_36     [UIFont fontWithName:FONTNAME_BOLD size:36]
#define BFONT_35     [UIFont fontWithName:FONTNAME_BOLD size:35]
#define BFONT_34     [UIFont fontWithName:FONTNAME_BOLD size:34]
#define BFONT_33     [UIFont fontWithName:FONTNAME_BOLD size:33]
#define BFONT_32     [UIFont fontWithName:FONTNAME_BOLD size:32]
#define BFONT_31     [UIFont fontWithName:FONTNAME_BOLD size:31]
#define BFONT_30     [UIFont fontWithName:FONTNAME_BOLD size:30]
#define BFONT_29     [UIFont fontWithName:FONTNAME_BOLD size:29]
#define BFONT_28     [UIFont fontWithName:FONTNAME_BOLD size:28]
#define BFONT_27     [UIFont fontWithName:FONTNAME_BOLD size:27]
#define BFONT_26     [UIFont fontWithName:FONTNAME_BOLD size:26]
#define BFONT_25     [UIFont fontWithName:FONTNAME_BOLD size:25]
#define BFONT_24     [UIFont fontWithName:FONTNAME_BOLD size:24]
#define BFONT_23     [UIFont fontWithName:FONTNAME_BOLD size:23]
#define BFONT_22     [UIFont fontWithName:FONTNAME_BOLD size:22]
#define BFONT_21     [UIFont fontWithName:FONTNAME_BOLD size:21]
#define BFONT_20     [UIFont fontWithName:FONTNAME_BOLD size:20]
#define BFONT_19     [UIFont fontWithName:FONTNAME_BOLD size:19]
#define BFONT_18     [UIFont fontWithName:FONTNAME_BOLD size:18]
#define BFONT_17     [UIFont fontWithName:FONTNAME_BOLD size:17]
#define BFONT_16     [UIFont fontWithName:FONTNAME_BOLD size:16]
#define BFONT_15     [UIFont fontWithName:FONTNAME_BOLD size:15]
#define BFONT_14     [UIFont fontWithName:FONTNAME_BOLD size:14]
#define BFONT_13     [UIFont fontWithName:FONTNAME_BOLD size:13]
#define BFONT_12     [UIFont fontWithName:FONTNAME_BOLD size:12]
#define BFONT_11     [UIFont fontWithName:FONTNAME_BOLD size:11]
#define BFONT_10     [UIFont fontWithName:FONTNAME_BOLD size:10]
#define BFONT_9     [UIFont fontWithName:FONTNAME_BOLD size:9]
#define BFONT_8     [UIFont fontWithName:FONTNAME_BOLD size:8]




#endif /* GlobalConstant_h */
