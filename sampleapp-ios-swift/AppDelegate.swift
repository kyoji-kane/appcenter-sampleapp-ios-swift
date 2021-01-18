
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import AppCenterPush

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        MSAppCenter.setLogLevel(.verbose)
        
        MSAppCenter.start("d24e5d0e-dc43-4605-b012-09a72ce02b5f", withServices: [
            MSAnalytics.self,
            MSCrashes.self,
            MSPush.self,
        ])
        
        return true
    }
}
