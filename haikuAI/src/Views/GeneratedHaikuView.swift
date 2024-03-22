import SwiftUI

struct GeneratedHaikuView: View {
    var haiku: String
    
    var body: some View {
        VStack {
            Text(haiku)
                .padding()
            
            // SNS共有機能（ダミー）
            Button("SNSで共有") {
                // SNS共有機能の実装
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}
