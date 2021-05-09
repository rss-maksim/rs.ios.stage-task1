#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (number == nil) {
        return @[];
    }
    NSCharacterSet* chSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"].invertedSet;
    NSString* numbers = [[number.stringValue componentsSeparatedByCharactersInSet:chSet] componentsJoinedByString:@""];
    
    NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:numbers.length];
      
    int i = 0;
    while (i < numbers.length) {
        NSString *c = [NSString stringWithFormat:@"%c", [numbers characterAtIndex:i]];
        [arr addObject:c];
        i += 1;
    }
    return arr.reverseObjectEnumerator.allObjects;
}

@end
