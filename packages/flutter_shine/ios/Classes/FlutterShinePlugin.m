#import "FlutterShinePlugin.h"
#if __has_include(<flutter_shine/flutter_shine-Swift.h>)
#import <flutter_shine/flutter_shine-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_shine-Swift.h"
#endif

@implementation FlutterShinePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterShinePlugin registerWithRegistrar:registrar];
}
@end
