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
    long playerArrayIndex = 0;
    while (playerArrayIndex < playerArray.count) {
        NSNumber *playerScore = playerArray[playerArrayIndex];
        long rankedArrayIndex = 0;
        long currentRank = 1;
        while (rankedArrayIndex < rankedArray.count) {
            if (playerScore >= rankedArray[rankedArrayIndex]) {
                break;
            }
            if (rankedArrayIndex < rankedArray.count - 1 && rankedArray[rankedArrayIndex] == rankedArray[rankedArrayIndex + 1]) {
                rankedArrayIndex += 1;
                continue;
            }
            rankedArrayIndex += 1;
            currentRank += 1;
        }
        [totalScore addObject:@(currentRank)];
        playerArrayIndex += 1;
    }
    return totalScore;
}

@end
