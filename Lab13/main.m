//
//  main.m
//  Lab13
//
//  Created by Carlos andres Diaz bravo  on 2020-04-06.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    NSString *sentence = @"Hello CornerStone";
    NSLog(@"%@", [sentence stringByPigLatinization]);

    }
    return 0;
}