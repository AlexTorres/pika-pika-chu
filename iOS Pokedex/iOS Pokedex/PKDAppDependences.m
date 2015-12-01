//
//  PKDAppDependences.m
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "PKDAppDependences.h"
#import "PKDPokedexModuleWireFrame.h"
#import "PKDRootWireFrame.h"

@interface PKDAppDependences ()

@property (nonatomic, strong) PKDPokedexModuleWireFrame *pokedexWireframe;

@end

@implementation PKDAppDependences

- (id)init
{
    if ((self = [super init]))
    {
        [self configureDependencies];
    }
    
    return self;
}

- (void)installRootViewControllerIntoWindow:(UIWindow *)window
{
    [self.pokedexWireframe presentPKDPokedexModuleModuleFrom:window];
}

- (void)configureDependencies
{
    PKDPokedexModuleWireFrame *pokedexWireframe = [[PKDPokedexModuleWireFrame alloc] init];
    PKDRootWireFrame *rootWireframe = [[PKDRootWireFrame alloc] init];
    pokedexWireframe.rootWireframe = rootWireframe;
    self.pokedexWireframe = pokedexWireframe;
}



@end
