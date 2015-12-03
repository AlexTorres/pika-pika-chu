//
//  PKDPokemonInteractorTest.m
//  iOS Pokedex
//
//  Created by John Alexandert Torres on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PKDPokemonModuleInteractor.h"

@interface PKDPokemonInteractorTest : XCTestCase
@property (nonatomic) PKDPokemonModuleInteractor *interactor;
@end

@implementation PKDPokemonInteractorTest

- (void)setUp {
    [super setUp];
    self.interactor = [PKDPokemonModuleInteractor new];

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testLoadPokemonFromApi {
    [self.interactor loadPokemonFromApi:@"api/v1/pokemon/19/"];
    XCTAssert(YES, @"Pass");
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
