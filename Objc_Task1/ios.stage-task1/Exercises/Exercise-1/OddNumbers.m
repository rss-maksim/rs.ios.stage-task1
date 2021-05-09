//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    int number = 0;
    for (NSNumber *item in array) {
        if (item.intValue % 2 != 0) {
            number += 1;
        }
    }
    return number;
}

@end
