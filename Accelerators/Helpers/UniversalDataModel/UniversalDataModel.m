//
//  UniversalDataModel.m
//  CoreDataObjC
//
//  Created by Rushikesh Kulkarni on 23/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "UniversalDataModel.h"

@implementation UniversalDataModel

static UniversalDataModel * sUniversalDataModel = nil;


+ (UniversalDataModel *)getUniversalDataModel{
    @synchronized(self)
    {
        if(sUniversalDataModel == nil)
        {
            sUniversalDataModel = [[UniversalDataModel alloc] init];
        }
        return sUniversalDataModel;
    }
}
-(void)clearUniversalDataModel {
    
}





@end
