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
<<<<<<< HEAD
<<<<<<< HEAD
   
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if (cheeseRange.location != NSNotFound){
    NSString *nocheeseName = [cheeseName stringByReplacingCharactersInRange: cheeseRange withString:@""];
    return nocheeseName;
    }
    
    else {
        return cheeseName;
    }
=======
=======
>>>>>>> upstream/master
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
>>>>>>> upstream/master
}



- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return [NSString stringWithFormat:@"%ld cheese", cheeseCount];
        
    } else {
       return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
<<<<<<< HEAD
    }
=======
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}
>>>>>>> upstream/master

@end