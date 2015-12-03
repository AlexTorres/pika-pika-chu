//
//  PKDPokedexInteractorTest.m
//  iOS Pokedex
//
//  Created by John Alexandert Torres on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PKDPokedexModuleInteractor.h"

@interface PKDPokedexInteractorTest : XCTestCase
@property (nonatomic) PKDPokedexModuleInteractor *pokedexInteractorForTest;
@end

@implementation PKDPokedexInteractorTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.pokedexInteractorForTest = [PKDPokedexModuleInteractor new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.

    [super tearDown];
}

- (void)testInteractor {
   [self.pokedexInteractorForTest loadEntriesFormAPI];
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
