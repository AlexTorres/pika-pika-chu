//
//  PKDPokemonListModel.m
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "PKDPokemonListModel.h"

@implementation PKDPokemonListModel

+(JSONKeyMapper*)keyMapper
{
    return [JSONKeyMapper mapperFromUnderscoreCaseToCamelCase];
}

@end
