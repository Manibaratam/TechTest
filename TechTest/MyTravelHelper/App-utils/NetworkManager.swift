//
//  NetworkManager.swift
//  MyTravelHelper
//
//  Created by Mani Baratam on 22/04/21.
//  Copyright © 2021 Sample. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    static var sharedInstance = NetworkManager()
    func getAPIResponse(urlString: String, completionHandelr: @escaping (Data) -> Void) {
        let session = URLSession.shared
        if let url = URL(string: urlString) {
            let task = session.dataTask(with: url, completionHandler: { data, response, error in
                if let objData = data {
                    completionHandelr(objData)
                }
            })
            task.resume()
        }
    }
}
