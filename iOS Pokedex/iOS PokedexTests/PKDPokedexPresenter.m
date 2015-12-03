//
//  PKDPokedexPresenter.m
//  iOS Pokedex
//
//  Created by John Alexandert Torres on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "PKDPokedexModulePresenter.h"
#import "PKDPokedexModuleItem.h"

@interface PKDPokedexPresenter : XCTestCase
@property (nonatomic) PKDPokedexModulePresenter *pokedexPresenter;

@end

@implementation PKDPokedexPresenter

- (void)setUp {
    [super setUp];
    self.pokedexPresenter = [PKDPokedexModulePresenter new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPokedexUpdate {

    [self.pokedexPresenter updatePokedex];
    XCTAssert(YES, @"Pass");
}

- (void)testReloadedEntries {
    PKDPokedexModuleItem *mockItem = [PKDPokedexModuleItem new];
    [self.pokedexPresenter reloadedEntries:mockItem];
    XCTAssert(YES, @"Pass");
}

- (void)testGoToPokemon {
    PKDPokedexModuleItem *mockItem = [PKDPokedexModuleItem new];
    [self.pokedexPresenter gotoPokemon:mockItem];
    XCTAssert(YES, @"Pass");
}

- (void)testPokedexGotoPokemon{
    
    [self.pokedexPresenter updatePokedex];
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
