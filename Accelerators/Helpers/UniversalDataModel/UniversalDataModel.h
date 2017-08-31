//
//  UniversalDataModel.h
//  CoreDataObjC
//
//  Created by Rushikesh Kulkarni on 23/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@interface UniversalDataModel : NSObject {
}
@property (strong) NSManagedObject *userDataModel;

+(UniversalDataModel *)getUniversalDataModel;

- (void)clearUniversalDataModel;

@end
