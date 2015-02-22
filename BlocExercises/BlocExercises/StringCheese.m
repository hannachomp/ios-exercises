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
   
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if (cheeseRange.location != NSNotFound){
    NSString *nocheeseName = [cheeseName stringByReplacingCharactersInRange: cheeseRange withString:@""];
    return nocheeseName;
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