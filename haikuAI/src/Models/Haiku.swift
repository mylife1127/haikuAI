import Foundation

struct Haiku: Identifiable {
    var id: UUID = UUID() // 各俳句に一意のIDを提供
    var content: String // 俳句のテキスト
    var dateCreated: Date // 生成日時
    var explanation: String? // 俳句の解説（サブスクライブユーザー向け）

    // 初期化
    init(content: String, dateCreated: Date = Date(), explanation: String? = nil) {
        self.content = content
        self.dateCreated = dateCreated
        self.explanation = explanation
    }
}
