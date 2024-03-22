import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView() // 俳句生成ビュー
                .tabItem {
                    Label("俳句生成", systemImage: "pencil")
                        .background(Color.gray) // タブアイコンの背景色をグレーに変更
                }
                
            HistoryView() // 過去の俳句ビュー
                .tabItem {
                    Label("今までの俳句", systemImage: "book.closed")
                        .background(Color.gray) // タブアイコンの背景色をグレーに変更
                }
                
            SettingsView() // 設定ビュー
                .tabItem {
                    Label("設定", systemImage: "gear")
                        .background(Color.gray) // タブアイコンの背景色をグレーに変更
                }
        }
    }
}
