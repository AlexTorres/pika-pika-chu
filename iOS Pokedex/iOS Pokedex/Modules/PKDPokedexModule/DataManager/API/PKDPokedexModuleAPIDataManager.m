//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokedexModuleAPIDataManager.h"
#import "PKDConfiguration.h"
#import "PKDPokedexModuleItem.h"


@implementation PKDPokedexModuleAPIDataManager

- (void) pokedexListFromAPISuccess:(PKDSuccessBlock)successBlock
                          failture:(PKDErrorBlock)failtureBlock {
    NSString *apiEndPoint = [[PKDConfiguration sharedInstance] apiEndPoint];
    NSString *apiVersion = [[PKDConfiguration sharedInstance] apiVersion];
    NSString *path = [NSString stringWithFormat:@"%@%@%@", apiEndPoint,apiVersion,kPokedexPath];
    
    [[PKDService sharedInstance] getServiceWithPath:path paramethers:[NSDictionary dictionary]  success:^(NSDictionary *response, BOOL success) {
        PKDPokedexModuleItem *model = [[PKDPokedexModuleItem alloc] initWithDictionary:response error:nil];
       successBlock(model,YES);
    } error:^(NSError *error) {
        failtureBlock(error);
    }];
}

@end