//
//  NatureApp.swift
//  Nature
//
//  Created by STIdea on 28/6/22.
//

import SwiftUI

@main
struct NatureApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherView(weatherViewModel: WeatherViewModel())
        }
    }
}
