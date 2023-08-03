import Foundation
import Capacitor
import WatchConnectivity

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ApplicationContextPlugin)
public class ApplicationContextPlugin: CAPPlugin {
    private let implementation = ApplicationContext()

    @objc func updateApplicationContext(_ call: CAPPluginCall) {
        do {
            try WCSession.default.updateApplicationContext(call.dictionaryRepresentation as! [String : Any])
            print("Called updateApplicationContext successfully.")
        } catch let error {
            print("Error updating application context: \(error.localizedDescription). Have you set up the watch delegates?")
        }

        call.resolve()
    }
}
