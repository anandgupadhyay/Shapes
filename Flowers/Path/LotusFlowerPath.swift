//
//  LotusFlowerPath.swift
//  Flowers
//
//  Created by James Thang on 17/01/2023.
//

import SwiftUI

struct LotusFlowerPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.minY),
            control: CGPoint(x: rect.minX - 50, y: rect.maxY * 0.6))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.maxY),
            control: CGPoint(x: rect.maxX + 50, y: rect.maxY * 0.6))
        
        return path
    }
}

struct LotusFlowerPath_Previews: PreviewProvider {
    static var previews: some View {
        LotusFlowerPath()
            .frame(width: 240, height: 300)
    }
}
