import SwiftUI

struct HaikuInputView: View {
    @State private var inputText = ""

    var body: some View {
        TextField("俳句を入力", text: $inputText)
            .padding()
    }
}
