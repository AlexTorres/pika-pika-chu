//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokemonModuleProtocols.h"


@interface PKDPokemonModuleInteractor : NSObject <PKDPokemonModuleInteractorInputProtocol>

@property (nonatomic, weak) id <PKDPokemonModuleInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <PKDPokemonModuleAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <PKDPokemonModuleLocalDataManagerInputProtocol> localDataManager;

@end