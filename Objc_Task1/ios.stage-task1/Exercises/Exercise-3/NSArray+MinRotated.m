#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.firstObject == nil) {
        return nil;
    }
    if (self.count == 1) {
        return self.firstObject;
    }
    int left = 0;
    int right = (int)self.count - 1;
    
    if ([self[right] intValue] > [self.firstObject intValue]) {
        return self.firstObject;
    }
    
    while (right >= left) {
        int mid = left + (right - left) / 2;
        if ([self[mid] intValue] > [self[mid + 1] intValue]) {
            return self[mid + 1];
        }
        if ([self[mid - 1] intValue] > [self[mid] intValue]) {
            return self[mid];
        }
        if ([self[mid] intValue] > [self.firstObject intValue]) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return self.firstObject;
}

@end
