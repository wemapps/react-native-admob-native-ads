#import "RNNativeAdMobUtils.h"

NSArray *__nullable RNAdMobProcessTestDevices(NSArray *__nullable testDevices)
{
    if (testDevices == NULL) {
        return testDevices;
    }
    NSInteger index = [testDevices indexOfObject:@"SIMULATOR"];
    if (index == NSNotFound) {
        return testDevices;
    }
    NSMutableArray *values = [testDevices mutableCopy];
    [values removeObjectAtIndex:index];
    return values;
}
