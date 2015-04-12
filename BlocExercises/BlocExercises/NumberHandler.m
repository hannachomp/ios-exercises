//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int firstNumber = [number intValue];
    int secondNumber = 2;
    NSNumber *numberDoubled = [NSNumber numberWithInt:firstNumber*secondNumber];
    return numberDoubled;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
   
    NSMutableArray *arrayofNumber = [[NSMutableArray alloc] init];
    if (number <otherNumber) {
        for (NSInteger firstNumber = number; firstNumber <=otherNumber; firstNumber++){
            NSNumber *nextNumber = [NSNumber numberWithInt:firstNumber];
            [arrayofNumber addObject: nextNumber];
        }
    } else {
        for(NSInteger firstNumber = otherNumber; firstNumber <=number; firstNumber++) {
            NSNumber *nextNumber = [NSNumber numberWithInt:firstNumber];
            [arrayofNumber addObject:nextNumber];
        }
    }
    return arrayofNumber;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger number = 0;
    for (NSInteger i = 0; i <[arrayOfNumbers count]; i++) {
        if (number > [arrayOfNumbers[i] integerValue]) {
            number = [arrayOfNumbers[i] integerValue];
        }
    }
    return number;
}

@end
