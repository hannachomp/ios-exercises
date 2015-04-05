//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *modifiableString = [@"" mutableCopy];
    
    if (number < otherNumber) {
        for (NSInteger ascendingnumbers=number; ascendingnumbers<=otherNumber; ascendingnumbers++) {
            [modifiableString appendString:[NSString stringWithFormat:@"%ld", (long)ascendingnumbers]];
            NSLog(@"%@", modifiableString);
        }
        
    return modifiableString;
    }
    
    else {
        for (NSInteger descendingnumbers=otherNumber; descendingnumbers<=number; descendingnumbers++) {
            [modifiableString appendString:[NSString stringWithFormat:@"%ld", (long)descendingnumbers]];
            NSLog(@"%@", modifiableString);
        }
    return modifiableString;
    }
    
}

@end
