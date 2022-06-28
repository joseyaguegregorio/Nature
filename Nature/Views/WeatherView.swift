//
//  ContentView.swift
//  Nature
//
//  Created by STIdea on 28/6/22.
//

import SwiftUI

struct WeatherView: View {
    
    @ObservedObject var weatherViewModel: WeatherViewModel
    
    var body: some View {
        VStack{
            Text(weatherViewModel.temperature)
                .padding()
        }.onAppear {
            weatherViewModel.start()
        }

    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weatherViewModel: WeatherViewModel())
    }
}
