#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSCharacterSet* notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    return self.length > 0 && [self rangeOfCharacterFromSet:notDigits].location == NSNotFound;
}

@end
