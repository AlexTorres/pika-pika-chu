//
//  Configuration.m
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "PKDConfiguration.h"

@interface PKDConfiguration ()

@property (nonatomic, strong) NSDictionary *configutationPlist;
@property (nonatomic, strong) NSString *configurationString;

@end


@implementation PKDConfiguration

- (instancetype)init {
    self = [super init];
    if (self) {
        NSString *path = [[NSBundle mainBundle] pathForResource:kConfigurationKey ofType:@"plist"];
        self.configurationString = [[NSBundle mainBundle] infoDictionary][kConfigurationKey];
        self.configutationPlist = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    
    return self;
}

+ (PKDConfiguration *)sharedInstance {
    static PKDConfiguration *sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        sharedInstance = [[PKDConfiguration alloc] init];
    });
    
    return sharedInstance;
}

- (NSString*)apiEndPoint {
    NSDictionary *configurationDictionary = self.configutationPlist[self.configurationString];
    
    return configurationDictionary[kAPIKey];
}

- (NSString*)apiVersion {
    
    return self.configutationPlist[kVersionKey];
}

@end
