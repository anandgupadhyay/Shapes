struct LineAndHalfCircleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Draw a horizontal line from left to center
        let start = CGPoint(x: rect.minX, y: rect.midY)
        let mid = CGPoint(x: rect.midX, y: rect.midY)
        path.move(to: start)
        path.addLine(to: mid)
        
        // Draw a half circle (semicircle) on the right side
        let radius = rect.width / 4
        let center = CGPoint(x: rect.midX + radius, y: rect.midY)
        path.addArc(
            center: center,
            radius: radius,
            startAngle: .degrees(180),
            endAngle: .degrees(0),
            clockwise: false
        )
        
        return path
    }
}

//How to Use
// Usage in your SwiftUI View
struct ContentView: View {
    var body: some View {
        LineAndHalfCircleShape()
            .stroke(Color.blue, lineWidth: 4)
            .frame(width: 200, height: 100)
            .padding()
    }
}

//======Repeat to Create Pattern======//
struct PatternView: View {
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<10) { _ in
                LineAndHalfCircleShape()
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 24, height: 12)
            }
        }
    }
}
