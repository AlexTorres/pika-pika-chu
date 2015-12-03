//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import "PKDPokemonModuleItem.h"

@implementation PKDPokemonModuleItem
+(JSONKeyMapper*)keyMapper {
    
    return [JSONKeyMapper mapperFromUnderscoreCaseToCamelCase];
}

@end
