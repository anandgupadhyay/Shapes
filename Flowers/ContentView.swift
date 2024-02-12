//
//  ContentView.swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 250) {
                ApricotFlower(delayTime: 0.8)
                YellowDaisyFlower(delayTime: 0.5)
                CherryBlossom_(delayTime: 1.8)
                TuberoseFlower(delayTime: 2)
                MarigoldFlower(delayTime: 1.5)
                GattungCamelliaFlower(delayTime: 3.2)
                Sunflower(delayTime: 3.2)
                FourLeafClover(delayTime: 3)
                RoseMyrtleFlower(delayTime: 4.0)
                IrisDomesticaFlower(delayTime: 6)
            }
            //.offset(y: -200)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
