import Foundation

class SubscriptionManager {
    static let shared = SubscriptionManager()

    var isSubscribed: Bool = false

    func subscribe() {
        isSubscribed = true
    }

    func unsubscribe() {
        isSubscribed = false
    }
}
