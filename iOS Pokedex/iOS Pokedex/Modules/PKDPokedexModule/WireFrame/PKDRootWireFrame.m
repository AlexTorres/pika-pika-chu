//
//  PKDRootWireFrame.m
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "PKDRootWireFrame.h"

@implementation PKDRootWireFrame

- (void)showRootViewController:(UIViewController *)viewController
                      inWindow:(UIWindow *)window
{
    UINavigationController *navigationController = [self navigationControllerFromWindow:window];
    navigationController.viewControllers = @[viewController];
}


- (UINavigationController *)navigationControllerFromWindow:(UIWindow *)window
{
    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];
    
    return navigationController;
}

@end
