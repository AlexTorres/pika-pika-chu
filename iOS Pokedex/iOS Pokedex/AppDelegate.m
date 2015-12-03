//
//  AppDelegate.m
//  iOS Pokedex
//
//  Created by iOS Development on 11/30/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "AppDelegate.h"
#import "PKDAppDependences.h"

@interface AppDelegate ()
@property (nonatomic, strong) PKDAppDependences *dependencies;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
    
    PKDAppDependences *dependencies = [[PKDAppDependences alloc] init];
    self.dependencies = dependencies;
    
    [self.dependencies installRootViewControllerIntoWindow:self.window];
  return YES;
}



@end
