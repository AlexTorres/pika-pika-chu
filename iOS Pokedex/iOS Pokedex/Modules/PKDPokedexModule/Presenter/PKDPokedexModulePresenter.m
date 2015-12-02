//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokedexModulePresenter.h"
#import "PKDPokedexModuleWireframe.h"

@implementation PKDPokedexModulePresenter

-(void)updatePokedex {
    [self.interactor loadEntriesFormAPI];
}

-(void)reloadedEntries:(PKDPokedexModuleItem *)moduleItem {
    [self.view reloadedPokedex:moduleItem];
}

-(void)gotoPokemon:(id)pokemon {
    [self.wireFrame pushPokemonInterface:pokemon];
}

@end