//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokedexModuleProtocols.h"


@interface PKDPokedexModuleInteractor : NSObject <PKDPokedexModuleInteractorInputProtocol>

@property (nonatomic, weak) id <PKDPokedexModuleInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <PKDPokedexModuleAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <PKDPokedexModuleLocalDataManagerInputProtocol> localDataManager;

@end