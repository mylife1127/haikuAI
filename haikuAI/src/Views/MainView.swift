import SwiftUI

struct MainView: View {
    @State private var inputText: String = ""
    @State private var showingGeneratedHaiku = false
    @State private var generatedHaiku: String = "これはサンプルの俳句です。"

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // 背景画像を安全領域内に適用
                Image("haikuAI")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                    .edgesIgnoringSafeArea(.all)

                ScrollView {
                    VStack {
                        // ヘッダー部分
                        Text("いろんなことを俳句に")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                Text("いろんなことを俳句に")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .offset(x: 2, y: 2)
                            )

                        // 入力部分
                        VStack {
                            Text("100文字以内で入力してください")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .overlay(
                                    Text("100文字以内で入力してください")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .offset(x: 1, y: 1)
                                )
                            TextEditor(text: $inputText)
                                .frame(height: 80)
                                .border(Color.gray, width: 1)
                                .padding()
                                .foregroundColor(.black)
                            Text("\(inputText.count)/100")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .overlay(
                                    Text("\(inputText.count)/100")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .offset(x: 1, y: 1)
                                )
                        }

                        // ボタン部分
                        Button(action: {
                            // 俳句の生成処理を実装
                            generatedHaiku = "古池や\n蛙飛び込む\n水の音"
                            self.showingGeneratedHaiku = true
                        }) {
                            Text("俳句を詠む")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                                .background(Color(red: 0.8, green: 0.6, blue: 1.0))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding()

                        // 生成された俳句の表示
                        if showingGeneratedHaiku {
                            VStack {
                                Text(generatedHaiku)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .overlay(
                                        Text(generatedHaiku)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .offset(x: 2, y: 2)
                                    )

                                Button(action: {
                                    // 解説を表示する処理を実装
                                }) {
                                    Text("解説を読む")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding()
                                        .background(Color(red: 0.8, green: 0.6, blue: 1.0))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                                .padding()
                            }
                        }

                        Spacer()
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
