//
//  PKDEvolutionItem.h
//  iOS Pokedex
//
//  Created by iOS Development on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <JSONModel/JSONModel.h>
@protocol PKDEvolutionItem
@end

@interface PKDEvolutionItem : JSONModel
@property (assign, nonatomic) NSInteger level;
@property (strong, nonatomic) NSString *method;
@property (strong, nonatomic) NSString *to;

@end
