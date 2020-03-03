#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(TestEventBridge, RCTEventEmitter)

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

@end

