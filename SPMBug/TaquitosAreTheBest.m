//
//  TaquitosAreTheBest.m
//  SPMBug
//
//  Created by Joshua Liebowitz on 9/3/21.
//

#import "TaquitosAreTheBest.h"
@import RevenueCat;

NS_ASSUME_NONNULL_BEGIN
@implementation TaquitosAreTheBest

- (void)start {
    [RCPurchases setDebugLogsEnabled:true];
}

- (void)doStuff {
    NSLog(@"hi");
}

- (void)purchaserInfoWithCompletionBlock:(RCReceivePurchaserInfoBlock)completion
NS_SWIFT_NAME(purchaserInfo(_:)) {
    [RCPurchases.sharedPurchases purchaserInfoWithCompletionBlock:completion];
}

@end

NS_ASSUME_NONNULL_END
