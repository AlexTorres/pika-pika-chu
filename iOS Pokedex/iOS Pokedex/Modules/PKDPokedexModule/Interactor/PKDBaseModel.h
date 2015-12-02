//
//  PKDBaseModel.h
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PKDBaseModel
@end
@interface PKDBaseModel : JSONModel


@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* resourceUri;

@end
