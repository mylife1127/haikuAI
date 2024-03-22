import Foundation

extension Date {
    // 日付を「年月日」形式でフォーマットする
    func formatted() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.string(from: self)
    }
}

extension String {
    // 文字列が空か、空白のみで構成されているかをチェックする
    var isBlank: Bool {
        return self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
