//
//  main.m
//  Lab13
//
//  Created by Carlos andres Diaz bravo  on 2020-04-06.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//
 
#import <Foundation/Foundation.h>
#import "NSString+Piglatin.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Chips";
        NSLog(@"word: %@",string);
        string = [string stringByPigLatinization];
        NSLog(@"result: %@",string);
    }
    return 0;
}

