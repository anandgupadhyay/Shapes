
import SwiftUI

extension View {
    /// Adds a stretchy effect when pulling down inside a ScrollView.
    func stretchy() -> some View {
        self.visualEffect { content, geometry in
            let currentHeight = geometry.size.height
            let scrollOffset = geometry.frame(in: .scrollView).minY
            let positiveOffset = max(0, -scrollOffset) // pulling down gives negative minY
            let newHeight = currentHeight + positiveOffset
            let scaleFactor = newHeight / currentHeight
            
            return content.scaleEffect(
                x: scaleFactor,
                y: scaleFactor,
                anchor: .bottom
            )
        }
    }
}
