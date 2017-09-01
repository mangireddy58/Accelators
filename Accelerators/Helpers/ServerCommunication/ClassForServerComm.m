//
//  ClassForServerComm.m
//  Prasyst
//
//  Created by Sai on 15/07/17.
//  Copyright © 2017 Simplicity. All rights reserved.
//

#import "ClassForServerComm.h"
#import "AFHTTPSessionManager.h"

@implementation ClassForServerComm

#pragma mark - GET
- (void)sendHttpGetRequestWithParam:(NSString *)parametersString andServiceName:(NSString *)serviceName {
    NSString *serviceUrl = [NSString stringWithFormat:@"%@%@", BASE_URL, serviceName];
    NSData* data = [parametersString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    NSDictionary *parametersDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager GET:serviceUrl parameters:parametersDictionary progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (self.delegate) {
            [self.delegate onServiceSuccess:(NSMutableArray *)responseObject];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (self.delegate) {
            [self.delegate onServiceFailed];
        }
    }];
}
#pragma mark - POST
- (void)sendHttpPostRequestWithParam:(NSString *)parametersString andServiceName:(NSString *)serviceName{
    NSString *serviceUrl = [NSString stringWithFormat:@"%@%@", BASE_URL, serviceName];
    NSData* data = [parametersString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    NSDictionary *parametersDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSLog(@"%@ %@",serviceUrl,parametersDictionary);
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [manager.requestSerializer setTimeoutInterval:SERVICE_TIMEOUT];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json",@"text/javascript",@"text/json",@"text/plain", nil];
    [manager PUT:serviceUrl parameters:parametersDictionary success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (self.delegate) {
            [self.delegate onServiceSuccess:(NSMutableArray *)responseObject];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (self.delegate) {
            [self.delegate onServiceFailed];
        }
    }];
}



@end
