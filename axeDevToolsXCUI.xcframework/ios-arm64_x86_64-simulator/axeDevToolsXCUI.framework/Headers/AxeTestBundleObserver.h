//
//  AxeTestBundleObserver.h
//  axeDevTools iOS
//
//  Created by Devanshu Chandra on 12/22/25.
//  Copyright © 2025 Deque Systems. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

/// An observer that tracks test bundle lifecycle events.
/// Uses weak linking to XCTest, allowing the framework to work in both test and non-test contexts.
/// This class will only function when XCTest is available at runtime.
/// Note: This class conforms to XCTestObservation protocol at runtime but doesn't declare it
/// to avoid linking against XCTest.
///
/// The observer automatically registers itself when the class is loaded if XCTest is available.
/// To receive callbacks, set the onBundleStart and onBundleFinish blocks as early as possible,
/// ideally in a +load method of your test class.
API_AVAILABLE(ios(16.0))
@interface AxeTestBundleObserver : NSObject

/// Shared singleton instance
@property (class, nonatomic, readonly) AxeTestBundleObserver *shared;

/// Indicates whether a test bundle is currently running
@property (nonatomic, readonly) BOOL isBundleRunning;

/// The bundle that started (if any)
@property (nonatomic, readonly, nullable) NSBundle *currentBundle;

/// Callback invoked when test bundle starts
@property (nonatomic, copy, nullable) void (^onBundleStart)(NSBundle *bundle);

/// Callback invoked when test bundle finishes
@property (nonatomic, copy, nullable) void (^onBundleFinish)(NSBundle *bundle);

/// Registers this observer with XCTestObservationCenter if XCTest is available
/// @return YES if registration succeeded, NO if XCTest is not available
- (BOOL)registerObserver;

/// Unregisters this observer from XCTestObservationCenter
- (void)unregisterObserver;

/// Checks if XCTest framework is available at runtime
+ (BOOL)isXCTestAvailable;

@end

NS_ASSUME_NONNULL_END
