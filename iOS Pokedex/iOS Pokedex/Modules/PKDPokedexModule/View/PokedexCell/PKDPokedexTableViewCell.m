//
//  PKDPokedexTableViewCell.m
//  iOS Pokedex
//
//  Created by iOS Development on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "PKDPokedexTableViewCell.h"
#import "PKDPokemonListModel.h"

@interface PKDPokedexTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *pokemonNameLabel;

@end


@implementation PKDPokedexTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    if (selected) {
        self.pokemonNameLabel.shadowColor = [UIColor darkGrayColor];
        self.pokemonNameLabel.shadowOffset = CGSizeMake(1, 1);
    } else {
        self.pokemonNameLabel.shadowColor = nil;
    }
}




- (void) configureForPokemon:(PKDPokemonListModel*)pokemonListModel {
    self.pokemonNameLabel.text = pokemonListModel.name;
}


@end
