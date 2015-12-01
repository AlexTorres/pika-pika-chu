//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokedexModuleProtocols.h"

@class PKDPokedexModuleWireFrame;

@interface PKDPokedexModulePresenter : NSObject <PKDPokedexModulePresenterProtocol, PKDPokedexModuleInteractorOutputProtocol>

@property (nonatomic, weak) id <PKDPokedexModuleViewProtocol> view;
@property (nonatomic, strong) id <PKDPokedexModuleInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <PKDPokedexModuleWireFrameProtocol> wireFrame;

@end
