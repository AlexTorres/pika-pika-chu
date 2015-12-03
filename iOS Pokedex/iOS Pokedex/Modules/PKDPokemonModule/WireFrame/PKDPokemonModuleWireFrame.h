//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokemonModuleProtocols.h"
#import "PKDPokemonModuleView.h"
#import "PKDPokemonModuleLocalDataManager.h"
#import "PKDPokemonModuleAPIDataManager.h"
#import "PKDPokemonModuleInteractor.h"
#import "PKDPokemonModulePresenter.h"
#import "PKDPokemonModuleWireframe.h"
#import <UIKit/UIKit.h>

@interface PKDPokemonModuleWireFrame : NSObject <PKDPokemonModuleWireFrameProtocol>
@property (nonatomic,strong) PKDPokemonModuleView *pokemonView;

@end
