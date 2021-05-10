#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *totalScore = NSMutableArray.array;
    if (rankedArray.count == 0) {
        for (long index = 0; index < playerArray.count; index++) {
            [totalScore addObject:@(1)];
        }
        return totalScore;
    }
    NSMutableSet *rankedUniqueScore = NSMutableSet.set;
    long j = playerArray.count - 1;
    long i = 0;
    while (j >= 0) {
        while (i < rankedArray.count) {
            if (playerArray[j].intValue < rankedArray[i].intValue) {
                [rankedUniqueScore addObject:rankedArray[i]];
            } else {
                break;
            }
            i += 1;
        }
        [totalScore insertObject:@(rankedUniqueScore.count + 1) atIndex:0];
        j -= 1;
    }
    return totalScore;
}

@end
