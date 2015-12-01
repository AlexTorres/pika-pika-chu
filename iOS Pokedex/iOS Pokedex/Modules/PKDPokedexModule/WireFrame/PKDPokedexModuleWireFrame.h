//
// Created by John Torres
// Copyright (c) 2015 John Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKDPokedexModuleProtocols.h"
#import "PKDPokedexModuleView.h"
#import "PKDPokedexModuleLocalDataManager.h"
#import "PKDPokedexModuleAPIDataManager.h"
#import "PKDPokedexModuleInteractor.h"
#import "PKDPokedexModulePresenter.h"
#import "PKDPokedexModuleWireframe.h"
#import "PKDRootWireFrame.h"
#import <UIKit/UIKit.h>


@interface PKDPokedexModuleWireFrame : NSObject <PKDPokedexModuleWireFrameProtocol>

@property (nonatomic, strong) PKDRootWireFrame *rootWireframe;

@end
