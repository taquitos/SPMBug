//
//  TaquitosAreTheBest.h
//  SPMBug
//
//  Created by Joshua Liebowitz on 9/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class RCPurchaserInfo;
typedef void (^RCReceivePurchaserInfoBlock) (RCPurchaserInfo * _Nullable, NSError * _Nullable);

@interface TaquitosAreTheBest : NSObject

- (void)start;
- (void)doStuff;

- (void)purchaserInfoWithCompletionBlock:(void (^)(RCPurchaserInfo * _Nullable, NSError * _Nullable))completion

NS_SWIFT_NAME(purchaserInfo(_:));
@end

NS_ASSUME_NONNULL_END



