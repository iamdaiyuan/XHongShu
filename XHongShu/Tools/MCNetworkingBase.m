//
//  MCNetworkingBase.m
//  ZhiZhu
//
//  Created by 周陆洲 on 15/12/4.
//  Copyright © 2015年 wt-vrs. All rights reserved.
//

#import "MCNetworkingBase.h"

@implementation MCNetworkingBase

+ (void)getWithUrl:(NSString *)url param:(id)param resultClass:(Class)resultClass success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    NSDictionary *params = [param mj_keyValues];
    
    [MCNetworking GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if (success) {
            id result = [resultClass mj_objectWithKeyValues:responseObject];
            success(result);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)postWithUrl:(NSString *)url param:(id)param resultClass:(Class)resultClass success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    NSDictionary *params = [param mj_keyValues];
    
    [MCNetworking POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if (success) {
            id result = [resultClass mj_objectWithKeyValues:responseObject];
            success(result);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        if (failure) {
            failure(error);
        }
    }];
}

@end
