//
//  ContentView.swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI


extension View {
func glowEffect(color1:Color, color2:Color, color3:Color) -> some View {
    self
        .foregroundColor(Color(hue: 0.5, saturation: 0.8, brightness: 1))
        .background {
            self
                .foregroundColor(color1).blur(radius: 0).brightness(0.8)
        }
        .background {
            self
                .foregroundColor(color2).blur(radius: 4).brightness(0.35)
        }
        .background {
            self
                .foregroundColor(color3).blur(radius: 2).brightness(0.35)
        }
        .background {
            self
                .foregroundColor(color3).blur(radius: 12).brightness(0.35)
            
        }
     }
}

extension View where Self: Shape {
  func glow(
    fill: some ShapeStyle,
    lineWidth: Double,
    blurRadius: Double = 8.0,
    lineCap: CGLineCap = .round
  ) -> some View {
    self
      .stroke(style: StrokeStyle(lineWidth: lineWidth / 2, lineCap: lineCap))
      .fill(fill)
      .overlay {
        self
          .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: lineCap))
          .fill(fill)
          .blur(radius: blurRadius)
      }
      .overlay {
        self
          .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: lineCap))
          .fill(fill)
          .blur(radius: blurRadius / 2)
      }
  }
}
struct ContentView: View {
    let gradient: LinearGradient = .linearGradient(.init(colors: [.orange,.white,.green]), startPoint: .leading, endPoint: .trailing)
    var body: some View {
        List {
            VStack{
                Text("I love my India")
                    .font(.system(size: 45))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300,height: 100)
                //                .glowEffect(color1: <#T##Color#>, color2: <#T##Color#>, color3: <#T##Color#>)
                Text("\(Date())")
                    .font(.system(size: 10))
                Circle()
                    .stroke(lineWidth: 2.0)
                    .fill(.orange)
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 4.0)
                            .fill(.red)
                            .blur(radius: 4.0)
                    }
                Capsule()
                    .glow(
                        fill: .angularGradient(
                            stops: [
                                .init(color: .blue, location: 0.0),
                                .init(color: .purple, location: 0.2),
                                .init(color: .red, location: 0.4),
                                .init(color: .mint, location: 0.5),
                                .init(color: .indigo, location: 0.7),
                                .init(color: .pink, location: 0.9),
                                .init(color: .blue, location: 1.0),
                            ],
                            center: .center,
                            startAngle: Angle(radians: .zero),
                            endAngle: Angle(radians: .pi * 2)
                        ),
                        lineWidth: 4.0
                    )
            }
        }
    }
    
    
    //        ScrollView(.vertical) {
    //            VStack(spacing: 250) {
    //                ApricotFlower(delayTime: 0.8)
    //                YellowDaisyFlower(delayTime: 0.5)
    //                CherryBlossom_(delayTime: 1.8)
    //                TuberoseFlower(delayTime: 2)
    //                MarigoldFlower(delayTime: 1.5)
    //                GattungCamelliaFlower(delayTime: 3.2)
    //                Sunflower(delayTime: 3.2)
    //                FourLeafClover(delayTime: 3)
    //                RoseMyrtleFlower(delayTime: 4.0)
    //                IrisDomesticaFlower(delayTime: 6)
    //            }
    //            //.offset(y: -200)
    //        }
    //    }
    //}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
