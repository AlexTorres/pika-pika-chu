//
//  PKDPokedexAPIManager.m
//  iOS Pokedex
//
//  Created by John Alexandert Torres on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PKDPokedexModuleAPIDataManager.h"

@interface PKDPokedexAPIManager : XCTestCase
@property (nonatomic) PKDPokedexModuleAPIDataManager *pokedexApiManager;
@end

@implementation PKDPokedexAPIManager

- (void)setUp {
    [super setUp];
    self.pokedexApiManager = [PKDPokedexModuleAPIDataManager new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPokedexAPI {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTestExpectation *expectation =
    [self expectationWithDescription:@"High Expectations"];

     [self.pokedexApiManager pokedexListFromAPISuccess:^(id obj, BOOL success) {
         XCTAssertNotNil(obj);
         XCTAssertTrue(success);
         [expectation fulfill];
         
     } failture:^(NSError * error) {
         XCTAssertTrue(error);
     }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
