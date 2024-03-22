import SwiftUI

struct HaikuDisplayView: View {
    var haikuText: String

    var body: some View {
        Text(haikuText)
            .padding()
    }
}
