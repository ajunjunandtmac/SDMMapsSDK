//
//  HereMapViewService.swift
//  HereMap
//
//  Created by Steven Zhou on 2022/6/9
//  
//      

import UIKit
import heresdk
import CoreLocation
import RxSwift
import UIKit

class HereMapViewService: SDMMapViewService {
    private let mapView: MapView
    required init(with frame: CGRect) {
        mapView = MapView(frame: frame)
    }
    
    func setFrame(_ frame: CGRect, animated: Bool) {
        mapView.frame = frame
    }
    
    func getMapView() -> UIView {
        return mapView
    }
    
    func loadScene(with mapViewType: SDMMapViewType) -> Observable<Void> {
        return Observable.create { observer in
            let mapViewAdaptor = HereMapViewTypeAdaptor(mapViewType: mapViewType)
            self.mapView.mapScene.loadScene(mapScheme: mapViewAdaptor.mapScheme) { error in
                if let error = error {
                    let error = NSError(domain: "com.stationdm.heremap", code: Int(error.rawValue))
                    observer.onError(error)
                } else {
                    observer.onNext(())
                    observer.onCompleted()
                }
            }
            return Disposables.create()
        }
    }
    
    func handleLowMemory() {
        mapView.handleLowMemory()
    }
    
    func setCenter(_ center: CLLocationCoordinate2D, animate: Bool, zoom: Float?) {
        if let zoom = zoom {
            let zoomLevel = MapMeasure(kind: .zoomLevel, value: Double(zoom))
            mapView.camera.lookAt(point: GeoCoordinates(latitude: center.latitude, longitude: center.longitude), zoom: zoomLevel)
        } else {
            mapView.camera.lookAt(point: GeoCoordinates(latitude: center.latitude, longitude: center.longitude))
        }
    }
    
    func setCenter(_ center: CLLocationCoordinate2D, animate: Bool, distanceInMeter: Double?) {
        if let distanceInMeter = distanceInMeter {
            let zoomLevel = MapMeasure(kind: .distance, value: distanceInMeter)
            mapView.camera.lookAt(point: GeoCoordinates(latitude: center.latitude, longitude: center.longitude), zoom: zoomLevel)
        } else {
            mapView.camera.lookAt(point: GeoCoordinates(latitude: center.latitude, longitude: center.longitude))
        }
    }
}
