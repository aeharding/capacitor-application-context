import Foundation

@objc public class ApplicationContext: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
