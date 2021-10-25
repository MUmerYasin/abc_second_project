import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

     // TODO: Add your Google Maps API key
        GMSServices.provideAPIKey("AIzaSyCRAsOgt3oJ61UbdJTdNQ9Diz1NqRaKQ2I")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
