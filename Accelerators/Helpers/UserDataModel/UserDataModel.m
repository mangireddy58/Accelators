//
//  UserDataModel.m
//  Torq
//
//  Created by Rushikesh  Kulkarni on 15/11/16.
//  Copyright © 2016 simplicity. All rights reserved.
//

#import "UserDataModel.h"
#import "GlobalConstant.h"
#import "AppDelegate.h"

@implementation UserDataModel
//Singleton Object
static UserDataModel *sUserDataModel = nil;
@synthesize userId = mUserId;
@synthesize password = mPassword;
@synthesize userData;

+ (UserDataModel *)getUserDataModel
{
    @synchronized (self) {
        if (sUserDataModel == nil) {
            sUserDataModel = [[UserDataModel alloc]init];
            sUserDataModel.userId = @"";
            
            NSManagedObjectContext *context = nil;
            id delegate = [[UIApplication sharedApplication] delegate];
            if ([delegate performSelector:@selector(managedObjectContext)]) {
                context = [delegate managedObjectContext];
            }
            NSFetchRequest *request = [[NSFetchRequest alloc] init];
            [request setEntity:[NSEntityDescription entityForName:ENTITY_NAME inManagedObjectContext:context]];
            NSError *error = nil;
            NSArray *results = [context executeFetchRequest:request error:&error];
            if ([results count] >= 1) {
                NSManagedObject *userDataManagedObject = [results lastObject];
                sUserDataModel.userId = [userDataManagedObject valueForKey:@"userId"];
                sUserDataModel.password = [userDataManagedObject valueForKey:@"password"];
                NSLog(@"UserId: %@", sUserDataModel.userId);
                NSLog(@"Password: %@", sUserDataModel.password);
            }
        }
    }
    return sUserDataModel;
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
// Userid
- (void)saveUserID:(NSString *)userID{
    [self printUserData];
    mUserId = userID;
    
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (self.userData) {
        [self.userData setValue:mUserId forKey:@"userId"];
    }
    else {
        NSManagedObject *newuserDataModel = [NSEntityDescription insertNewObjectForEntityForName:ENTITY_NAME inManagedObjectContext:context];
        
        [newuserDataModel setValue:mUserId forKey:@"userId"];
    }
    
    NSError *error = nil;
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    else{
        NSLog(@"Data saved.");
    }
}
// Password
- (void)savePassword:(NSString *)password {
    [self printUserData];
    mPassword = password;
    
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (self.userData) {
        [self.userData setValue:mPassword forKey:@"password"];
    }
    else {
        NSManagedObject *newuserDataModel = [NSEntityDescription insertNewObjectForEntityForName:ENTITY_NAME inManagedObjectContext:context];
        
//        [newuserDataModel setValue:mUserId forKey:@"userId"];
        [newuserDataModel setValue:mUserId forKey:@"password"];
    }
    
    NSError *error = nil;
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    else{
        NSLog(@"Data saved.");
    }
}
#pragma mark - Clearing the data
- (void)clearUserDataModel{
    
    self.userId = @"";
    
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:[NSEntityDescription entityForName:ENTITY_NAME inManagedObjectContext:context]];
    NSError *error = nil;
    NSArray *results = [context executeFetchRequest:request error:&error];
    NSInteger i = 0;
    while (i < [results count]) {
        [context deleteObject:[results objectAtIndex:0]];
        
        NSError *error = nil;
        if (![context save:&error]) {
            NSLog(@"Can't Delete! %@ %@", error, [error localizedDescription]);
        }else{
            NSLog(@"Deleted");
        }
        i++;
    }
}


- (void)saveUserData:(NSDictionary *)userDataDict{
    //UserId
    mUserId = @"";
    if((NSNull *)[userDataDict objectForKey:@"userId"] != [NSNull null]){
        if([[userDataDict objectForKey:@"userId"] longValue] > 0){
            mUserId = [NSString stringWithFormat:@"%ld", [[userDataDict objectForKey:@"userId"] longValue]];
        }
    }
    NSManagedObjectContext *context = [self managedObjectContext];

    if (self.userData) {
        // Update existing user
        [self.userData setValue:mUserId forKey:@"userId"];
    }
    else {
        // Create a new user
        NSManagedObject *newUserData = [NSEntityDescription insertNewObjectForEntityForName:ENTITY_NAME inManagedObjectContext:context];
        [newUserData setValue:mUserId forKey:@"userId"];

    }
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    else{
        NSLog(@"Data saved.");
    }
}

- (void)printUserData{
    NSLog(@"UserId: %@", mUserId);
}

@end
