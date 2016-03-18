//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        NSString *noCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        
        return noCheeseName;
    }
    
    if ([[cheeseName lowercaseString] hasSuffix:@" Cheese"]) {
        
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        NSString *noCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return noCheeseName;
        
        
    }
    
    else {
        return cheeseName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
}

@end
