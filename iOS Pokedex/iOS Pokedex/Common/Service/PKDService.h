//
//  PKDService.h
//  iOS Pokedex
//
//  Created by iOS Development on 12/1/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^PKDSuccessBlock)(id,BOOL);
typedef void (^PKDErrorBlock)(NSError*);

@interface PKDService : NSObject

+ (PKDService *)sharedInstance;
- (void)getServiceWithPath:(NSString*)path
               paramethers:(NSDictionary*)paramethers
                   success:(PKDSuccessBlock)successBlock
                     error:(PKDErrorBlock)failtureBlock;


@end
