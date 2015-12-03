//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokemonModuleProtocols.h"

@class PKDPokemonModuleWireFrame;

@interface PKDPokemonModulePresenter : NSObject <PKDPokemonModulePresenterProtocol, PKDPokemonModuleInteractorOutputProtocol>

@property (nonatomic, weak) id <PKDPokemonModuleViewProtocol> view;
@property (nonatomic, strong) id <PKDPokemonModuleInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <PKDPokemonModuleWireFrameProtocol> wireFrame;

@end
