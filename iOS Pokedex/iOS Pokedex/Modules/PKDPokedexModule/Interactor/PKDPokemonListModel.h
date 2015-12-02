//
//  PKDPokemonListModel.h
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol PKDPokemonListModel
@end

@interface PKDPokemonListModel : JSONModel

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* resourceUri;

@end
