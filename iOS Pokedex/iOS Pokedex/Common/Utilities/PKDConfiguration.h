//
//  Configuration.h
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PKDConfiguration : NSObject

+ (PKDConfiguration *)sharedInstance;
- (NSString*)apiEndPoint;
- (NSString*)apiVersion;

@end
