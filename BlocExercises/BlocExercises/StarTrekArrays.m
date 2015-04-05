//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *startrekarray = [characterString componentsSeparatedByString:@";"];
    return startrekarray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *startrekstring = [characterArray componentsJoinedByString:@";"];
  
    return startrekstring;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *sortstartrek = [characterArray mutableCopy];
   NSSortDescriptor *startreksort = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [sortstartrek sortUsingDescriptors:@[startreksort]];
    return sortstartrek;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
      NSString *startrekstring = [characterArray componentsJoinedByString:@";"];
    
    if ([startrekstring rangeOfString:@"Worf"].location == NSNotFound) {
        return NO;
    }
                                       else {
    return YES;
}
    
}
@end