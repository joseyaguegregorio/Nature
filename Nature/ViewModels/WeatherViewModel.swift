//
//  WeatherViewModel.swift
//  Nature
//
//  Created by STIdea on 28/6/22.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var temperature: String = "Nada"
    public let weatherService: WeatherService
    
    init(){
        self.weatherService = WeatherService()
    }
    
    func start(){
        temperature = "33"
    }
}

