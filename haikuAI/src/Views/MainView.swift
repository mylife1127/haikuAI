import SwiftUI

struct MainView: View {
    
    @State private var inputText: String = ""
    @State private var showingGeneratedHaiku = false
    @State private var generatedHaiku: String = "これはサンプルの俳句です。"
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                
                Image("haikuAI_top")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    TextEditor(text: $inputText)
                        .frame(height: 140)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding(.horizontal)
                    
                    Button("俳句を生成") {
                        self.showingGeneratedHaiku = true
                    }
                    .padding()
                    .background(Color.gray) // フッターボタンの背景色をグレーに変更
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    Spacer()
                    Spacer()
                }
                .frame(width: geometry.size.width)
                .padding(.bottom, geometry.safeAreaInsets.bottom)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $showingGeneratedHaiku) {
            GeneratedHaikuView(haiku: generatedHaiku)
        }
    }
}
