//
//  PKDPokedexTableViewCell.h
//  iOS Pokedex
//
//  Created by iOS Development on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <UIKit/UIKit.h>


@class PKDPokemonListModel;

@interface PKDPokedexTableViewCell : UITableViewCell

- (void) configureForPokemon:(PKDPokemonListModel*)pokemonListModel;

@end
