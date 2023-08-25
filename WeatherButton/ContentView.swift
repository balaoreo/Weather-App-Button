//
//  ContentView.swift
//  WeatherButton
//
//  Created by Keona Balaoro on 9/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Sunshine and clear skies on Friday"
    @State private var sunny = "sun.max.fill"
  
    var body: some View {
        VStack {
            Image(systemName: sunny)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.orange)
         
            Text(messageString)
                .font(.headline)
                .fontWeight(.light)
                .foregroundColor(.black)
                .padding()
            
            Button("Tomorrow's Forecast") {
                sunny = "cloud.sun.fill"
                messageString = "Sunny with a bit of cloud on Saturday"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
