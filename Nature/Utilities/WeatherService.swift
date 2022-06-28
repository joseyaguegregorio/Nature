//
//  WeatherService.swift
//  Nature
//
//  Created by STIdea on 28/6/22.
//

import Foundation
import CoreLocation

class WeatherService: NSObject, CLLocationManagerDelegate{
    //    private let API_KEY = "2a234c05310027e3f38312acf302d9a9"
    private var completionHandler: ((Weather)->Void)?
    private var locationManager = CLLocationManager()
    
    override init(){
        super.init()
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print( "log:Check de permisos" )
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            print("log:Acceso permitido a la ubicacion")
            
        case .restricted, .denied:
            print("log:Acceso denegado a la ubicacion")
            
        case .notDetermined:
            print("log:El usuario aun no ha dicho nada sobre los permisos")
            manager.requestAlwaysAuthorization()
            
        default:
            print("log:Acceso ubicacion default")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let mostRecentLocation = locations.last else {return}
        
        print("log: LOCATION PROVIDER listener:\(mostRecentLocation)")
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        //        print("log:Error reading location in LocationProvider \(error)")
    }
    
}
