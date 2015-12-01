//
// Created by John Torres.
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokedexModuleProtocols.h"
#import "PKDService.h"


@interface PKDPokedexModuleAPIDataManager : NSObject <PKDPokedexModuleAPIDataManagerInputProtocol>

- (void) pokedexListFromAPISuccess:(PKDSuccessBlock)successBlock
                          failture:(PKDErrorBlock)failtureBlock;

@end