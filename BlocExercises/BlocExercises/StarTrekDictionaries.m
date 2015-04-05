//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
      id favoriteDrink = characterDictionary [@"favorite drink"];
        return favoriteDrink;
}


- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
   NSArray *favoriteDrinks = [charactersArray valueForKeyPath:@"favorite drink"];
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
   
    NSMutableDictionary *characterMutableDictionary = [characterDictionary mutableCopy];
    
    [characterMutableDictionary setObject:@"quote quote quote" forKey:@"quote"];
    return characterMutableDictionary;
}

@end
