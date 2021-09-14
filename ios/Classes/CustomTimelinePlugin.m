#import "CustomTimelinePlugin.h"
#if __has_include(<custom_timeline/custom_timeline-Swift.h>)
#import <custom_timeline/custom_timeline-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_timeline-Swift.h"
#endif

@implementation CustomTimelinePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomTimelinePlugin registerWithRegistrar:registrar];
}
@end
