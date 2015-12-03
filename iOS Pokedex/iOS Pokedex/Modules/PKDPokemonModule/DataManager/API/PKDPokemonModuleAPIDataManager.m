//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokemonModuleAPIDataManager.h"
#import "PKDPokemonModuleItem.h"
#import "PKDConfiguration.h"
#import "PKDService.h"

@implementation PKDPokemonModuleAPIDataManager

- (void) pokemonFromString:(NSString*)pokemonURI
                APISuccess:(PKDSuccessBlock)successBlock
                  failture:(PKDErrorBlock)failtureBlock {
    NSString *apiEndPoint = [[PKDConfiguration sharedInstance] apiEndPoint];
    NSString *path = [NSString stringWithFormat:@"%@%@", apiEndPoint,pokemonURI];
    
    [[PKDService sharedInstance] getServiceWithPath:path paramethers:[NSDictionary dictionary]  success:^(NSDictionary *response, BOOL success) {
        PKDPokemonModuleItem *model = [[PKDPokemonModuleItem alloc] initWithDictionary:response error:nil];
        successBlock(model,YES);
    } error:^(NSError *error) {
        failtureBlock(error);
    }];
}

@end