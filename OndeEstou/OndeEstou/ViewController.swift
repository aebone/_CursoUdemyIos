//
//  ViewController.swift
//  OndeEstou
//
//  Created by Aline Ebone on 08/02/18.
//  Copyright © 2018 Aline Ebone. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapa: MKMapView!
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var speed: UILabel!
    @IBOutlet weak var lat: UILabel!
    @IBOutlet weak var lon: UILabel!
    @IBOutlet weak var aaddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 34.013300, -118.499032
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        //let latitude: CLLocationDegrees = 34.013300
        //let longitude: CLLocationDegrees = -118.499032
        
     
        
       

       
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation = locations.last!
       
       
        let latitude = userLocation.coordinate.latitude
        let longitude = userLocation.coordinate.longitude
        
        lat.text = String(latitude)
        lon.text = String(longitude)
        
        speed.text = String(userLocation.speed)
        
        let coordiate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(coordiate, MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapa.setRegion(region, animated: true)
        
        CLGeocoder().reverseGeocodeLocation(userLocation) { details,err in
            if let addressdetail = details?.last {
            
            var thoroughfare = ""
            if addressdetail.thoroughfare != nil {
                thoroughfare = addressdetail.thoroughfare!
            }
            
            var subThoroughfare = ""
            if addressdetail.subThoroughfare != nil {
                subThoroughfare = addressdetail.subThoroughfare!
            }
            
            var locality = ""
            if addressdetail.locality != nil {
                locality = addressdetail.locality!
            }
            
            var subLocality = ""
            if addressdetail.subLocality != nil {
                subLocality = addressdetail.subLocality!
            }
                
            var postalCode = ""
            if addressdetail.postalCode != nil {
                postalCode = addressdetail.postalCode!
            }
            
            var country = ""
            if addressdetail.country != nil {
                country = addressdetail.country!
            }
            
            var administrativeArea = ""
            if addressdetail.administrativeArea != nil {
                administrativeArea = addressdetail.administrativeArea!
            }
            
            var subAdministrativeArea = ""
            if addressdetail.subAdministrativeArea != nil {
                subAdministrativeArea = addressdetail.subAdministrativeArea!
            }
                
                self.aaddress.text = thoroughfare + " - " + subThoroughfare + " / " + administrativeArea + " - " + country
            
            print("last : \(addressdetail)")
            print("first :  \(details?.first)")
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status == CLAuthorizationStatus.denied {
            print("nao autorizado")
            
            let alert: UIAlertController = UIAlertController.init(title: "olá", message: "precisamos da sua localização", preferredStyle: UIAlertControllerStyle.alert)
           
            let actionCancel: UIAlertAction = UIAlertAction.init(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            
            
            let actionConfig: UIAlertAction = UIAlertAction.init(title: "Ferramentas", style: UIAlertActionStyle.default, handler: { (alert) in
                
                if let configUrl = NSURL(string: UIApplicationOpenSettingsURLString) {
                    
                    UIApplication.shared.open(configUrl as URL)
                    
                }
                
            })
            
            alert.addAction(actionCancel)
            alert.addAction(actionConfig)
            
            present(alert, animated: true, completion: nil)
            
        } else {
            print("autorizado")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

