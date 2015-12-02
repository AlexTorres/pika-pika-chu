//
//  NSString+PKDStringAdditions.m
//  iOS Pokedex
//
//  Created by iOS Development on 12/2/15.
//  Copyright © 2015 Test. All rights reserved.
//

#import "NSString+PKDStringAdditions.h"

@implementation NSString (PKDStringAdditions)

- (NSString *)camelCased  {
    NSMutableString *output = [NSMutableString string];
    BOOL makeNextCharacterUpperCase = NO;
    for (NSInteger idx = 0; idx < [self length]; idx += 1) {
        unichar c = [self characterAtIndex:idx];
        if (c == '_') {
            makeNextCharacterUpperCase = YES;
        } else if (makeNextCharacterUpperCase) {
            [output appendString:[[NSString stringWithCharacters:&c length:1] uppercaseString]];
            makeNextCharacterUpperCase = NO;
        } else {
            [output appendFormat:@"%C", c];
        }
    }
    return output;
}

- (NSString *)pascalCased  {
    NSMutableString *result = [NSMutableString new];
    NSArray *words = [self componentsSeparatedByString: @" "];
    for (NSString *word in words) {
        [result appendString:word.withUppercasedFirstChar];
    }
    return result;
}

- (NSString *)withUppercasedFirstChar  {
    if (self.length <= 1) {
        return self.uppercaseString;
    } else {
        return [NSString stringWithFormat:@"%@%@",[[self substringToIndex:1] uppercaseString],[self substringFromIndex:1]];
    }
}

- (NSString *)withLowercasedFirstChar {
    if (self.length <= 1) {
        return self.lowercaseString;
    } else {
        return [NSString stringWithFormat:@"%@%@",[[self substringToIndex:1] lowercaseString],[self substringFromIndex:1]];
    }
}

@end
