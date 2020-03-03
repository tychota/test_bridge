#import <React/RCTBridgeModule.h>
#import <React/RCTLog.h>

@interface RCT_EXTERN_MODULE(TestBridge, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location)

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

@end
