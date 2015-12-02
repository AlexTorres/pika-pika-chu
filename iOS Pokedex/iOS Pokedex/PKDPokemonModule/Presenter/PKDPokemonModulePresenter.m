//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokemonModulePresenter.h"
#import "PKDPokemonModuleWireframe.h"

@implementation PKDPokemonModulePresenter

-(void) loadPokemonWithString:(NSString *)pokemonString {
    [self.interactor loadPokemonFromApi:pokemonString];
}
-(void) entriesFromInteractor:(NSArray *)sections model:(id)itemModel{
    [self.view reloadPokemonInfo:sections model:itemModel];
}
@end