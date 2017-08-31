//
//  UserDataModel.h
//  Torq
//
//  Created by Rushikesh  Kulkarni on 15/11/16.
//  Copyright © 2016 simplicity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface UserDataModel : NSObject{
    NSString *mUserId;
}


@property (nonatomic, copy) NSString *userId;


@property (strong) NSManagedObject *userData;

+ (UserDataModel *)getUserDataModel;

- (void)clearUserDataModel;

- (void)saveUserID:(NSString *)userID;
- (void)saveUserData:(NSDictionary *)userDataDict;
- (void)printUserData;


@end
