import Foundation
import Combine

class HaikuViewModel: ObservableObject {
    @Published var inputText: String = ""
    @Published var generatedHaiku: String? = nil
    @Published var haikuHistory: [Haiku] = []
    @Published var isSubscribed: Bool = false
    
    private var cancellables: Set<AnyCancellable> = []

    init() {
        // ViewModelの初期化ロジックがここに入ります。
        // 例えば、過去の俳句の履歴をロードするなど。
    }

    func generateHaiku() {
        // ここに、入力されたテキストから俳句を生成するロジックを実装します。
        // 簡単な例として、入力テキストをそのまま俳句として扱う（実際には、AIやアルゴリズムを使って生成します）。
        self.generatedHaiku = inputText // 実際のアプリでは、ここでAIを使った生成処理を行う
        
        // 生成された俳句を履歴に追加
        let newHaiku = Haiku(content: self.generatedHaiku ?? "未生成", explanation: "これは自動生成された俳句です。")
        self.haikuHistory.append(newHaiku)
    }

    func toggleSubscription() {
        // ユーザーのサブスクリプション状態を切り替えます。
        isSubscribed.toggle()
    }
}
