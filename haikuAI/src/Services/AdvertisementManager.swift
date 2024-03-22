import Foundation

class AdvertisementManager {
    static let shared = AdvertisementManager()

    func shouldShowAds() -> Bool {
        // サブスクライブしていない場合には広告を表示する
        return !SubscriptionManager.shared.isSubscribed
    }
}
