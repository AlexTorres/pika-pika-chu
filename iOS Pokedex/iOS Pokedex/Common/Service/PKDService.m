//
//  PKDService.m
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "PKDService.h"
#import "AFNetworking.h"

@implementation PKDService

+ (PKDService *)sharedInstance {
    static PKDService *sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        sharedInstance = [[PKDService alloc] init];
    });
    
    return sharedInstance;
}

- (void)getServiceWithPath:(NSString*)path
               paramethers:(NSDictionary*)paramethers
                   success:(PKDSuccessBlock)successBlock
                     error:(PKDErrorBlock)failtureBlock {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:path parameters:paramethers success:^(NSURLSessionTask *task, id responseObject) {
        successBlock(responseObject ,YES);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        failtureBlock(error);
    }];
}


@end
