#import <React/RCTBridgeModule.h>
#import <React/RCTLog.h>

@interface RCT_EXTERN_MODULE(TestBridge, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location)

RCT_EXTERN_METHOD(getSalutations:(NSString *)name resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(startSendingGreetings)

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

@end
