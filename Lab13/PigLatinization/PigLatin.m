//
//  PigLatin.m
//  Lab13
//
//  Created by Carlos andres Diaz bravo  on 2020-04-06.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import "PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *) stringByPigLatinization {
    NSString *words = @"";
    
    NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    
    NSMutableArray *consonantPiece = [[self componentsSeparatedByCharactersInSet:consonants] mutableCopy];
    
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    
    NSString *Piece = [consonantPiece objectAtIndex:0];
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[self length]];
                for (int i=0; i < [self length]; i++)
                    {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [characters addObject:ichar];
        [clusters componentsJoinedByString:ichar];
    }
    NSRange range = NSMakeRange(0, [Piece length]);
        [characters removeObjectsInRange:range];
        [characters addObject:Piece];
        [characters addObject:@"ay"];
        words = [characters componentsJoinedByString:@""];
        words = [NSString stringWithFormat:@"%@%@",[[words substringToIndex:1] uppercaseString],[words substringFromIndex:1]];
   
    return words;
}

@end
