//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokemonModuleInteractor.h"
#import "PKDPokedexModuleItem.h"

@implementation PKDPokemonModuleInteractor

-(void) loadPokemonFromApi:(NSString*)pokemonString {
    [self.APIDataManager pokemonFromString:pokemonString APISuccess:^(PKDPokedexModuleItem *response, BOOL success) {
        [self.presenter entriesFromInteractor:[[response toDictionary]allKeys] model:response];
    
    } failture:^(NSError *error) {
    
    }];
}

@end