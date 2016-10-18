//
//  AlamofireWrapper.swift
//  ProgrammingTask
//
//  Created by Artem Sherbachuk (UKRAINE) on 10/18/16.
//  Copyright © 2016 ArtemSherbachuk. All rights reserved.
//

import UIKit
import Alamofire

// shows that we can write in Swift too. Swift is important in these days and must have.
class RemoteServer: NSObject {

    private let basePath = "http://backend1.lordsandknights.com/XYRALITY/WebObjects/BKLoginServer.woa/wa/worlds"
    
    typealias ResponseCompletion = (_ worlds:[GemeWorldModel]?, _ error: NSError?) -> Void
    
    func login(email: NSString, password: NSString, completion: @escaping ResponseCompletion) {
        let parameters: Parameters = ["login": email,
                                         "password": password,
                                         "deviceType": UserInfo.deviceType,
                                         "deviceId": UserInfo.deviceID]
        let url = URL(string: basePath)!
        Alamofire.request(url, method: HTTPMethod.post,
                          parameters: parameters).responsePropertyList { response in
                            
                            guard let response = response.result.value, let data = response as? NSDictionary,
                                let worlds = data["allAvailableWorlds"] as? NSArray
                                else {
                                    let error = NSError(domain: "bad response. server don't return any data",
                                                        code: 01,
                                                        userInfo: nil)
                                    completion(nil, error)
                                    return
                            }
                            
                            let gameWorlds: [GemeWorldModel] = worlds.flatMap { world in
                                guard let world = world as? NSDictionary else {return nil}
                                
                                let country = world["country"] as? String ?? ""
                                let id = world["id"] as? Int ?? 0
                                let language = world["language"] as? String ?? ""
                                let mapURL = world["world"] as? String ?? ""
                                let name = world["name"] as? String ?? ""
                                let url = world["url"] as? String ?? ""
                                var worldStatus = ""
                                if let _worldStatus = world["worldStatus"] as? NSDictionary {
                                    worldStatus = _worldStatus["description"] as? String ?? ""
                                }
                                let gameWorld = GemeWorldModel(country: country, id: id, language: language,
                                                               mapURL: NSURL(string: mapURL)!, name: name,
                                                               url: NSURL(string: url)!, worldStatus: worldStatus)
                                return gameWorld
                            }
                            completion(gameWorlds, nil)
        }
        
    }
    
}
