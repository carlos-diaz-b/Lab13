//
//  PigLatin.m
//  Lab13
//
//  Created by Carlos andres Diaz bravo  on 2020-04-06.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import "PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    
    NSMutableArray *letters = [[NSMutableArray alloc] initWithCapacity:[self length]];
    for (int i=0; i < [self length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [letters addObject:ichar];
    }
    NSLog(@"letters: %@", [letters componentsJoinedByString:@""]);

    NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUYaeiouy"];
    
    NSMutableArray *fragment = [[self componentsSeparatedByCharactersInSet:consonants] mutableCopy];
    NSString *Piece = [fragment objectAtIndex:0];
    NSLog(@"Piece: %@", Piece);

    
    NSMutableArray *fragmentrange = [[NSMutableArray alloc] initWithCapacity:[Piece length]];
    for (int i=0; i < [Piece length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [Piece characterAtIndex:i]];
        [fragmentrange addObject:ichar];
    }
    NSLog(@"fragmentrange: %@", [fragmentrange componentsJoinedByString:@""]);

    
    NSRange range = NSMakeRange(0, [Piece length]);
    
    [letters removeObjectsInRange:range];
    
    [letters addObject:Piece];
    [letters addObject:@"ay"];
    
    NSString *finalWord =  [letters componentsJoinedByString:@""];
    
    return finalWord;
}

@end
