import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            switch selectedTab {
            case 0:
                MainView() // 俳句生成ビュー
            case 1:
                HistoryView() // 過去の俳句ビュー
            case 2:
                SettingsView() // 設定ビュー
            default:
                EmptyView()
            }

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "pencil")
                            .font(.system(size: 24))
                        Text("俳句生成")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(selectedTab == 0 ? .blue : .gray)
                    .onTapGesture {
                        selectedTab = 0
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "book.closed")
                            .font(.system(size: 24))
                        Text("今までの俳句")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(selectedTab == 1 ? .blue : .gray)
                    .onTapGesture {
                        selectedTab = 1
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "gear")
                            .font(.system(size: 24))
                        Text("設定")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(selectedTab == 2 ? .blue : .gray)
                    .onTapGesture {
                        selectedTab = 2
                    }
                    Spacer()
                }
                .padding(.vertical, 10)
                .background(Color.white)
                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: -2)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
